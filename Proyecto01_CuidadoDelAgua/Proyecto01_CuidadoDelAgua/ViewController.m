//
//  ViewController.m
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich  on 25/10/25.
//

#import "ViewController.h"
#import "Registro.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.listaDeConsumos = [NSMutableArray array];
    
    [self cargarDatos]; // Arreglado
    
    self.listaDeConsejos = @[
        @"Cierra la llave mientras te cepillas los dientes.",
        @"Toma duchas más cortas (5 minutos es suficiente).",
        @"Repara las fugas de agua en casa.",
        @"Usa una cubeta para lavar el auto, no la manguera.",
        @"Riega las plantas temprano en la mañana o en la noche."
    ];
    
    // Oculta el campo de consejo al iniciar
    self.consejotxt.hidden = YES;
    
    // Actualiza el gráfico directamente
    self.registros.registros = self.listaDeConsumos;
    self.consultarbtn.hidden = (self.listaDeConsumos.count == 0);
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}


- (IBAction)registrarbtn:(id)sender {
    
    NSString *textoLitros = self.consumotxt.stringValue;
        NSString *textoLimite = self.limitetxt.stringValue;

        double litros = [textoLitros doubleValue];
        double limite = [textoLimite doubleValue];
        if (litros <= 0) {
            return;
        }
        
        // --- Guarda el consumo anterior (si existe) ---
        double consumoAnterior = 0.0;
        if (self.listaDeConsumos.count > 0) {
            Registro *ultimo = [self.listaDeConsumos lastObject];
            consumoAnterior = ultimo.litros;
        }
        
        // --- Crear y guardar el nuevo registro ---
        Registro *nuevoRegistro = [[Registro alloc] initWithLitros:litros yFecha:[NSDate date]];
        [self.listaDeConsumos addObject:nuevoRegistro];
        self.consumotxt.stringValue = @"";
        [self guardarDatos];
        self.registros.registros = self.listaDeConsumos;
        self.consultarbtn.hidden = NO;
        
        // --- Mensajes según comparación con límite ---
        if (limite > 0 && litros > limite) {
            double exceso = ((litros - limite) / limite) * 100.0;
            [self mostrarAlerta:@"Consumo Excedido"
                      conMensaje:[NSString stringWithFormat:@"Has superado tu límite de %.1f litros en un %.1f%%.", limite, exceso]];
        } else if (limite > 0 && litros <= limite) {
            double ahorro = ((limite - litros) / limite) * 100.0;
            [self mostrarAlerta:@"Buen trabajo"
                      conMensaje:[NSString stringWithFormat:@"Has ahorrado un %.1f%% respecto a tu límite.", ahorro]];
        }
        
        // --- Mensajes según comparación con consumo anterior ---
        if (consumoAnterior > 0) {
            double cambio = ((litros - consumoAnterior) / consumoAnterior) * 100.0;
            if (cambio < 0) {
                [self mostrarAlerta:@"¡Bien hecho!"
                          conMensaje:[NSString stringWithFormat:@"Has reducido tu consumo en %.1f%% respecto al registro anterior.", fabs(cambio)]];
            } else if (cambio > 0) {
                [self mostrarAlerta:@"Cuidado"
                          conMensaje:[NSString stringWithFormat:@"Has aumentado tu consumo en %.1f%% respecto al registro anterior.", cambio]];
            } else {
                [self mostrarAlerta:@"Sin cambios"
                          conMensaje:@"Tu consumo es igual al del registro anterior."];
            }
        }
}
- (IBAction)mostrarConsejo:(id)sender {
    int indiceAleatorio = arc4random_uniform((uint32_t)self.listaDeConsejos.count);
    NSString *consejo = self.listaDeConsejos[indiceAleatorio];
    self.consejotxt.stringValue = consejo;
    
    self.consejotxt.hidden = NO;
}



- (IBAction)resetearDatos:(id)sender {
    
    
    NSAlert *alerta = [[NSAlert alloc] init];
    [alerta setMessageText:@"¿Estás seguro?"];
    [alerta setInformativeText:@"Esto borrará permanentemente todo tu historial de consumo."];
    [alerta addButtonWithTitle:@"Sí, borrar todo"]; // Botón 1
    [alerta addButtonWithTitle:@"Cancelar"];         // Botón 2
    [alerta setAlertStyle:NSAlertStyleWarning];
    

    NSModalResponse respuesta = [alerta runModal];
    if (respuesta == NSAlertFirstButtonReturn) {
        [self.listaDeConsumos removeAllObjects];
        self.registros.registros = self.listaDeConsumos;
        [self guardarDatos];
        self.consejotxt.hidden = YES;
        self.consultarbtn.hidden = YES;
    }
}

- (void)mostrarAlerta:(NSString *)titulo conMensaje:(NSString *)mensaje {
    NSAlert *alerta = [[NSAlert alloc] init];
    [alerta setMessageText:titulo];
    [alerta setInformativeText:mensaje];
    [alerta addButtonWithTitle:@"Entendido"];
    [alerta setAlertStyle:NSAlertStyleWarning];
    [alerta runModal];
}

- (void)guardarDatos {
    NSMutableArray *arrayParaGuardar = [NSMutableArray array];
    
    for (Registro *registro in self.listaDeConsumos) {
        NSDictionary *diccionario = @{
            @"litros": @(registro.litros),
            @"fecha": registro.fecha
        };
        [arrayParaGuardar addObject:diccionario];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:arrayParaGuardar forKey:@"historialDeConsumo"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

// FUNCIÓN CORREGIDAAAAAAAAAAAAAAA!!
- (void)cargarDatos {
    NSArray *arrayGuardado = [[NSUserDefaults standardUserDefaults] arrayForKey:@"historialDeConsumo"];
    
    if (arrayGuardado) {
        [self.listaDeConsumos removeAllObjects];
        
        for (NSDictionary *diccionario in arrayGuardado) {
            double litros = [diccionario[@"litros"] doubleValue];
            
            // --- ESTA ES LA LÍNEA CORREGIDA ---
            NSDate *fecha = diccionario[@"fecha"]; // Sin el '[' extra
            
            Registro *registro = [[Registro alloc] initWithLitros:litros yFecha:fecha];
            [self.listaDeConsumos addObject:registro];
        }
    }
}
@end

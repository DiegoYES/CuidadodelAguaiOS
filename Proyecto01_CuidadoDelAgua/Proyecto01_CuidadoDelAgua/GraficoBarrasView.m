//
//  GraficoBarrasView.m
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich on 25/10/25.
//

#import "GraficoBarrasView.h"


@implementation GraficoBarrasView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    if (self.registros == nil || self.registros.count == 0) {
        return;
    }
    
    double maxConsumo = 0;
    for (Registro *registro in self.registros) {
        if (registro.litros > maxConsumo) {
            maxConsumo = registro.litros;
        }
    }
    
    if (maxConsumo == 0) return;

    int numBarras = (int)self.registros.count;
    CGFloat anchoBarra = self.bounds.size.width / (numBarras * 1.5);
    CGFloat espacio = anchoBarra * 0.5;
    CGFloat xPos = espacio;
    
    for (Registro *registro in self.registros) {
        double porcentajeAltura = registro.litros / maxConsumo;
        CGFloat alturaBarra = porcentajeAltura * self.bounds.size.height;
        
        NSRect rectanguloBarra = NSMakeRect(xPos, 0, anchoBarra, alturaBarra);

        [[NSColor systemBlueColor] setFill];
        NSRectFill(rectanguloBarra);
        
        xPos += (anchoBarra + espacio);
    }
}

- (void)setRegistros:(NSArray<Registro *> *)registros {
    _registros = registros;
    [self setNeedsDisplay:YES];

}

@end

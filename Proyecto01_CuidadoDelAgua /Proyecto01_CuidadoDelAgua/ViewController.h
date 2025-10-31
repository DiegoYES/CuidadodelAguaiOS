//
//  ViewController.h
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich on 25/10/25.
//

#import <Cocoa/Cocoa.h>
#import "GraficoBarrasView.h"

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *consumotxt;
@property (weak) IBOutlet NSTextField *limitetxt;
@property (weak) IBOutlet NSTextField *consejotxt;

@property (weak) IBOutlet NSButton *consultarbtn;



- (IBAction)resetearDatos:(id)sender;
- (IBAction)mostrarConsejo:(id)sender;
- (IBAction)registrarbtn:(id)sender;

@property (nonatomic, strong) NSMutableArray *listaDeConsumos;
@property (nonatomic, strong) NSArray *listaDeConsejos;
@property (weak) IBOutlet GraficoBarrasView *registros;



@end


//
//  Registro.m
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich on 25/10/25.
//

#import "Registro.h"

@implementation Registro
- (instancetype)initWithLitros:(double)litros yFecha:(NSDate *)fecha {
    self = [super init];
    if (self) {
        _litros = litros;
        _fecha = fecha;
    }
    return self;
}
@end

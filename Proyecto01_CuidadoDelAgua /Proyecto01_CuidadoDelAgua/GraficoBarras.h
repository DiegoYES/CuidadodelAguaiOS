//
//  GraficoBarras.h
//  Proyecto01_CuidadoDelAgua
//
//  Created by MacBook Pro on 25/10/25.
//

#import <Cocoa/Cocoa.h>
#import "Registro.h"
NS_ASSUME_NONNULL_BEGIN

@interface GraficoBarras : NSView

@property (nonatomic, strong) NSArray<Registro *> *registros;
@end

NS_ASSUME_NONNULL_END

//
//  GraficoBarrasView.h
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich on 25/10/25.
//

#import <Cocoa/Cocoa.h>
#import "Registro.h"
NS_ASSUME_NONNULL_BEGIN

@interface GraficoBarrasView : NSView

@property (nonatomic, strong) NSArray<Registro *> *registros;
@end

NS_ASSUME_NONNULL_END

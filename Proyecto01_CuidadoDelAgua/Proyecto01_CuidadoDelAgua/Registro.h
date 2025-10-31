//
//  Registro.h
//  Proyecto01_CuidadoDelAgua
//
//  Created by Mac mich Pro on 25/10/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Registro : NSObject
@property (nonatomic, strong) NSDate *fecha;
@property (nonatomic, assign) double litros;
- (instancetype)initWithLitros:(double)litros yFecha:(NSDate *)fecha;
@end

NS_ASSUME_NONNULL_END

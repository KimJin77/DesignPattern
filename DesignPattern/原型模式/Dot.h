#import "Vertex.h"

@interface Dot: Vertex

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (instancetype)copyWithZone:(NSZone *)zone;

@end

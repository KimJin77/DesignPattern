#import "Dot.h"

@implementation Dot

// MARK: - NSCopying Method
- (instancetype)copyWithZone:(NSZone *)zone {
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];

    // Copy color
    dotCopy.color = [UIColor colorWithCGColor:[self.color CGColor]];

    // Copy size
    dotCopy.size = self.size;

    return dotCopy;
}

@end

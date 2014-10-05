#import "Account.h"
#import "NSObjCategory.h"

@implementation Account
- (id) init {
	self = [super init];
	AllDeposits = [NSMutableArray new];
	return self;
}
- (void) dealloc {
//	[AllDeposits release];
}
- (int) depositCount {
	return (int)[AllDeposits count];
}
- (void) deposit: (int) sum {
	[AllDeposits addObject: [NSNumber numberWithInt: sum]];
	balance = balance + sum;
}
- (int) balance {
    return balance; }
@end

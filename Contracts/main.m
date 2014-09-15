#import <Foundation/Foundation.h>
#import "Account.h"
#import "NSObjCategory.h"

#define __CONTRACTS__

#ifdef __CONTRACTS__
        #import "Contracts.h"
        #import "Account+Contract.h"
#else
        #define APPLY_CONTRACT(c)
#endif

/*int main (int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        APPLY_CONTRACT (Account);
        
        id plop = [[Account alloc] init];
        
        [plop balance];
        
        NSLog (@"number of deposits : %d", [plop depositCount]);
        [plop deposit: 42];
        NSLog (@"number of deposits : %d", [plop depositCount]);
        
    }
    
    return 0;
}
*/
//
//  NSObjCategory.h
//  ContractsIosBasta
//
//  Created by Dragan Basta on 9/13/14.
//  Copyright (c) 2014 Dragan Basta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ContractsIosBasta)

+ (void) actAsClass: (Class)aClass;

+ (void) exchangeMethodsImpParentToChild;
@end

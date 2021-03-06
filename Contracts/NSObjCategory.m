//
//  NSObjCategory.m
//  ContractsIosBasta
//
//  Created by Dragan Basta on 9/13/14.
//  Copyright (c) 2014 Dragan Basta. All rights reserved.
//

#import "NSObjCategory.h"
#import "objc/runtime.h"

@implementation NSObject (ContractsIosBasta)

static Class currentClass;
static Class parentClass;
static BOOL childToParent = YES;

+ (void) actAsClass: (Class)aClass
{
    if (currentClass == nil)
        currentClass = [self class];
    if (parentClass == nil)
        parentClass = aClass;
    
    Class firstClass;
    Class secondClass;
    /*childToParent = !childToParent;
    */
    if (childToParent) {
        firstClass = currentClass;
        secondClass = parentClass;
    } else {
        firstClass = parentClass;
        secondClass = currentClass;
    }
    
    // Iterate over all instance methods for this class
    unsigned int methodCount;
    unsigned int parentMethodCount;
    
    Method *methodList = class_copyMethodList(firstClass, &methodCount);
    Method *parentMethodList = class_copyMethodList(secondClass, &parentMethodCount);
    
    methodCount = methodCount>parentMethodCount ? parentMethodCount : methodCount;
    
    unsigned int i = 0;

    for (; i < methodCount; i++) {
        
        SEL methodName = method_getName(methodList[i]);
        
        Method myMethod = class_getInstanceMethod(firstClass, method_getName(methodList[i]));
        
        Method parentMethod = class_getInstanceMethod(secondClass, method_getName(methodList[i]));
        
        method_exchangeImplementations(parentMethod, myMethod);

    }
}

+ (void) exchangeMethodsImpParentToChild;
{
    
    [[self class] actAsClass: parentClass];
}
@end

//
//  M2SettingsDetailViewControllerContract.h
//  m2048
//
//  Created by Dragan Basta on 9/15/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObjCategory.h"
#import "Contracts.h"
#import "../m2048/Controller/M2SettingsDetailViewController.h"

#ifndef __M2SETTINGSDETAILVIEWCONTROLLER__

#define __M2SETTINGSDETAILVIEWCONTROLLER__

BEGIN_CONTRACT (M2SettingsDetailViewController)

    INVARIANTS (
        FACT (self.options != nil);
        FACT (self.footer != nil);
    )

    - (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView VERIFY (
            REQUIRE (
                FACT (tableView != nil);
            )
            int Result = [super numberOfSectionsInTableView:tableView]; // call the method
            ENSURE (
               FACT (Result > 0);
            )
        )

    - (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section VERIFY (
       REQUIRE (
                FACT(section > 0)
                FACT (tableView != nil);
                )
       int Result = [super tableView:tableView numberOfRowsInSection:section]; // call the method
       ENSURE (
               FACT (Result > 0);
               )
       )

    - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section VERIFY (
        REQUIRE (
                 FACT(section > 0)
                 FACT (tableView != nil);
                 )
        NSString *footer = self.footer;
        MODIFY(footer)
        NSString *Result = [super tableView:tableView titleForFooterInSection:section]; // call the method
        ENSURE (
                FACT (Result != nil);
                FACT(![Result isEqualToString:@""])
                FACT (self.footer == OLD(footer))
                )
        )

    - (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath VERIFY (
        REQUIRE (
                 FACT (tableView != nil);
                 FACT (indexPath != nil)
                 )
        UITableViewCell *Result = [super tableView:tableView cellForRowAtIndexPath:indexPath]; // call the method
        ENSURE (
                FACT (Result != nil);
                FACT (Result.textLabel.text !=nil)
                FACT (Result.tintColor != nil)
                )
        )
    - (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath VERIFY_PROC (
        REQUIRE(
                FACT(tableView != nil);
                FACT(indexPath != nil);
                )
        [super tableView:tableView didDeselectRowAtIndexPath:indexPath];ENSURE(
                FACT(GSTATE.needRefresh != YES);
            )
        )

END_CONTRACT

#endif
//
//  NSMutableAttributedString+Color.m
//  testTextView
//
//  Created by anoopm on 30/09/15.
//  Copyright (c) 2015 anoopm. All rights reserved.
//

#import "NSMutableAttributedString+Color.h"


@implementation NSMutableAttributedString (Color)

-(void)setColorForText:(NSString*) textToFind withColor:(UIColor*) color
{
    NSRange range = [self.mutableString rangeOfString:textToFind options:NSCaseInsensitiveSearch];
    
    if (range.location != NSNotFound) {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        [self addAttribute:NSFontAttributeName
                        value:[UIFont boldSystemFontOfSize:13]
                        range:range];
    }
}

@end

//
//  NSMutableAttributedString+Color.h
//
//  Created by JHH on 2017. 3. 20..
//  Copyright © 2017년 JHH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Color)
-(void)setColorForText:(NSString*) textToFind withColor:(UIColor*) color;
@end

# playTextViewAndLabel
Textview, Label 갖고 놀기 !

-TextView안에 imageView넣고 공간 처리하기 !!
```
UIBezierPath *exclusionPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.textView.frame.size.width - self.imageView.frame.size.width, 0, self.imageView.frame.size.width, self.imageView.frame.size.height)];
self.textView.textContainer.exclusionPaths  = @[exclusionPath];
[self.textView addSubview:self.imageView];
```
    
-한 Label안에서 color size bold 다르게 처리하기 !! 
```
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
```

//
//  UIPaddingLabel.m
//
//  Created by openapphub on 2024/10/18.
//

// PaddingLabel.m

#import "PaddingLabel.h"

@implementation PaddingLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _textInsets = UIEdgeInsetsZero;
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.textInsets)];
}

- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += self.textInsets.left + self.textInsets.right;
    size.height += self.textInsets.top + self.textInsets.bottom;
    return size;
}

- (void)sizeToFit {
    [super sizeToFit];
    CGRect frame = self.frame;
    frame.size.width += self.textInsets.left + self.textInsets.right;
    frame.size.height += self.textInsets.top + self.textInsets.bottom;
    self.frame = frame;
}

@end

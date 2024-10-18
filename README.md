<p align="center">
  <img src="https://user-images.githubusercontent.com/6329656/48312433-faebea00-e5e0-11e8-9f0d-6bd63e830c1c.png" alt="PaddingLabel logo" width="444">
</p>

# PaddingLabel

**PaddingLabel** is a customizable UILabel subclass for iOS, written in Objective-C, that allows you to add padding to your labels easily.

## Features

- Add custom padding to UILabels.
- Easy integration into any iOS project.
- Fully customizable appearance.

## Requirements

- **iOS** 8.0 or later
- **Xcode** 9.0 or later

## Installation

To integrate PaddingLabel into your Xcode project, simply copy the `PaddingLabel` files into your project directory.

## Usage

### Programmatically

Here's a quick example of how to use `PaddingLabel` programmatically:

```objective-c
#import "PaddingLabel.h"

// Create an instance of PaddingLabel
PaddingLabel *bottomLabel = [PaddingLabel new];

// Set text and appearance
bottomLabel.text = @"hello world";
bottomLabel.font = [UIFont fontWithName:@"Nunito Sans" size:16];
bottomLabel.textColor = [UIColor colorWithRed:52.52/255.0 green:62.15/255.0 blue:88.99/255.0 alpha:1.0];
bottomLabel.backgroundColor = [UIColor colorWithHexString:@"#F3F4F7"];
bottomLabel.textInsets = UIEdgeInsetsMake(12, 24, 12, 0); // top, left, bottom, right

// Customize layer properties
bottomLabel.layer.cornerRadius = 4.0;
bottomLabel.layer.masksToBounds = YES;

// Add to view
[self.view addSubview:bottomLabel];

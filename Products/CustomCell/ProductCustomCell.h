//
//  ProductCustomCell.h
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCustomCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *elementImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *oldPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *latestPriceLabel;

@end

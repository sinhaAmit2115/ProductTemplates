//
//  ProductItemsInfoModel.h
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import <Foundation/Foundation.h>


//@brief : This class represent the element model for specific row

@interface ProductItemsInfoModel : NSObject

@property(nonatomic, strong)NSString *itemTitle;/// each element title
@property(nonatomic, strong)NSString *itemImageUrl;// element image URL
@property(nonatomic, strong)NSString *webUrl; /// action type of each element

@end

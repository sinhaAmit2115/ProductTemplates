//
//  ProductInfoModel.h
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enum.h"

@interface ProductInfoModel : NSObject

@property(nonatomic, strong)NSString *title;/// row title;
@property(nonatomic, strong)NSString *imageUrl;/// image if needed /// not using
@property(nonatomic, assign)ProductTemplateType *templateType; /// template type
@property(nonatomic, strong)NSArray *itemsArray; /// childs items contain productItemsInfo model objects.

@property(nonatomic, assign)NSInteger sectionIndex;




@end

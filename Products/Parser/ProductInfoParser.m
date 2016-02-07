//
//  ProductInfoParser.m
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import "ProductInfoParser.h"
#import "ProductInfoModel.h"
#import "ProductItemsInfoModel.h"

@implementation ProductInfoParser

+ (NSArray *)doParse:(id)jsonString
{
    NSMutableArray *tempProductsArray = [NSMutableArray array];
    if([jsonString isKindOfClass:[NSArray class]]){
        for(NSInteger index = 0 ; index < [jsonString count] ; index++){
            NSDictionary *dictionary = [jsonString objectAtIndex:index];
            ProductInfoModel *model = [[ProductInfoModel alloc] init];
            model.sectionIndex = index;
            model.title = [dictionary objectForKey:@"label"];
            
            NSString *templateTypeString = [dictionary objectForKey:@""];
            if(templateTypeString && [templateTypeString caseInsensitiveCompare:@"product-template-1"]== NSOrderedSame){
                model.templateType = ProductTemplateType1;
            }
            else if(templateTypeString && [templateTypeString caseInsensitiveCompare:@"product-template-2"]== NSOrderedSame){
                model.templateType = ProductTemplateType2;
            }
            else if(templateTypeString && [templateTypeString caseInsensitiveCompare:@"product-template-3"]== NSOrderedSame){
                model.templateType = ProductTemplateType1;
            }
            model.imageUrl = [dictionary objectForKey:@"image"];
            
            NSArray *itemsArray = [dictionary objectForKey:@"items"];
            if([itemsArray isKindOfClass:[NSArray class]]){
                
                NSMutableArray *itemsTempArray = [NSMutableArray array];
                ProductItemsInfoModel *subModel = [[ProductItemsInfoModel alloc] init];
                
                for (NSDictionary *itemDictionary in itemsArray) {
                    subModel.itemTitle = [itemDictionary objectForKey:@"label"];
                    subModel.itemImageUrl = [itemDictionary objectForKey:@"image_url"];
                    subModel.webUrl = [itemDictionary objectForKey:@"web-url"];
                    [itemsTempArray addObject:subModel];
                }
                
                if([itemsTempArray count]){
                    model.itemsArray = [NSArray arrayWithArray:itemsTempArray];
                }
            }
            if(model){
                [tempProductsArray addObject:model];
            }
        }
    }
    return [NSArray arrayWithArray:tempProductsArray];
}

@end

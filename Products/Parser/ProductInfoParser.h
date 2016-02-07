//
//  ProductInfoParser.h
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductInfoParser : NSObject

+ (NSArray *)doParse:(id)jsonString;

@end

//
//  ProductInfoCommand.m
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import "ProductInfoCommand.h"
#import "ProductItemsInfoModel.h"
#import "ProductInfoModel.h"
#import "ProductInfoParser.h"

@interface ProductInfoCommand()

@property (nonatomic, strong)NSArray *productModelArray;

@end

@implementation ProductInfoCommand


- (void) executeRequestWithFilePath:(NSString *)filePathString successBlock:(APISuccessBlock)success
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:filePathString ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    
    NSArray *JSON = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    if(JSON && [JSON count]){
        [self parseData:JSON];
        success(YES);
    }
    else{
        success(NO);
    }
}

-(void) parseData:(id) JSON {
    self.productModelArray = [ProductInfoParser doParse:JSON];
}



@end

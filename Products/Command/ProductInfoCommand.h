//
//  ProductInfoCommand.h
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^APISuccessBlock) (BOOL isSucess);

@interface ProductInfoCommand : NSObject

- (void) executeRequestWithFilePath:(NSString *)filePathString successBlock:(APISuccessBlock)success;
@end

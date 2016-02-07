//
//  ViewController.m
//  Products
//
//  Created by Amit Sinha on 07/02/16.
//  Copyright © 2016 Amit Sinha. All rights reserved.
//

#import "ViewController.h"
#import "ProductInfoCommand.h"

@interface ViewController ()

@property(nonatomic, strong)NSArray *datasources;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self fetchProductInfoFromResourceBundle];
    

}


-(void)fetchProductInfoFromResourceBundle{
    
    ProductInfoCommand *command = [[ProductInfoCommand alloc]init];
    [command executeRequestWithFilePath:@"f_one" successBlock:^(BOOL isSuccess) {
        if(isSuccess){
            
        }
    }];
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

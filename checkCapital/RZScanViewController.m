//
//  ViewController.m
//  checkCapital
//
//  Created by redmoon on 1/23/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//
#define kServerPath @"http://bbs.unpcn.com/attachment.aspx?attachmentid=3639033"
#import "RZScanViewController.h"
#import "ASIHTTPRequest.h"
#import "macro.h"
#import "RZDetailViewController.h"
#import "MBProgressHUD.h"
#import "RZHTTPManager.h"

@interface RZScanViewController ()<ASIHTTPRequestDelegate,MBProgressHUDDelegate>
@property (strong, nonatomic)RZHTTPManager *httpManager;
@property (weak, nonatomic) IBOutlet UITextField *BarCode;
@property (strong, nonatomic)NSMutableData *receiveData;
@end

@implementation RZScanViewController

- (IBAction)scanner:(id)sender {
    DLog(@"scanner");
    ZBarReaderViewController *reader = [ZBarReaderViewController new];
    reader.readerDelegate = self;
    ZBarImageScanner *scanner = reader.scanner;
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    
    reader.showsZBarControls = YES;
    
    [self presentViewController:reader animated:YES completion:nil];
}

- (IBAction)input:(id)sender {
    DLog(@"");
    NSMutableString *strM = [NSMutableString stringWithString:kServerPath];
    self.httpManager.processType = DetailViewController;
#warning just testing network
    //    [strM appendString:self.BarCode.text];
    [self.httpManager grabURLInBackground:strM onView:self.navigationController.view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.BarCode.keyboardType =UIKeyboardTypeNumberPad;
}

#pragma mark -delegate for scanner
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    id<NSFastEnumeration> results = [info objectForKey:ZBarReaderControllerResults];
    ZBarSymbol *symbol = nil;
    for (symbol in results) {
        break;
    }
    DLog(@"success scan!");

    [picker dismissViewControllerAnimated:YES completion:nil];
    self.BarCode.text = symbol.data;
    [self input:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//懒加载
-(RZHTTPManager*)httpManager{
    DLog();
    if (!_httpManager){
        _httpManager = [[RZHTTPManager alloc]init];
        _httpManager.processType = UnknowViewController;
        _httpManager.viewController = self;
    }
    
    return _httpManager;
}

- (IBAction)cancelFirstResponder {
    [self.view endEditing:YES];
}
@end

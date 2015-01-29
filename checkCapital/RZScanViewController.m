//
//  ViewController.m
//  checkCapital
//
//  Created by redmoon on 1/23/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import "RZScanViewController.h"
#import "ASIHTTPRequest.h"
#import "macro.h"
#import "RZDetailViewController.h"

#define kServerPath @"http://bbs.unpcn.com/attachment.aspx?attachmentid=3639033"
#define kDestControllerName @"RZDetailViewController"
@interface RZScanViewController ()<ASIHTTPRequestDelegate>
@property (weak, nonatomic) IBOutlet UITextField *BarCode;
@property (strong, nonatomic)NSMutableData *receiveData;
@end

@implementation RZScanViewController
#pragma mark -delegate for scanner
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    id<NSFastEnumeration> results = [info objectForKey:ZBarReaderControllerResults];
    ZBarSymbol *symbol = nil;
    for (symbol in results) {
        break;
    }
    NSLog(@"success scan!");

    [picker dismissViewControllerAnimated:YES completion:nil];
    self.BarCode.text = symbol.data;
    [self input:nil];
}


- (IBAction)cancelFirstResponder {
    [self.view endEditing:YES];
}

- (IBAction)scanner:(id)sender {
    //DLog(@"scanner");
    ZBarReaderViewController *reader = [ZBarReaderViewController new];
    reader.readerDelegate = self;
    ZBarImageScanner *scanner = reader.scanner;
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    
    reader.showsZBarControls = YES;
    
    [self presentViewController:reader animated:YES completion:nil];
}
- (IBAction)input:(id)sender {
    
    NSLog(@"ok BTN");
    NSMutableString *url = [[NSMutableString alloc]initWithString:kServerPath];
    [url appendFormat:@"%@",self.BarCode.text];
    [self grabURLInBackground:url];
    
    
    
}

#pragma mark -create an asynchronous request
-(void)grabURLInBackground:(NSString *) formatURL{
    NSURL *url = [NSURL URLWithString:formatURL];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    [request setDelegate:self];
    [request startAsynchronous];
    
}

#pragma mark -ASIHttp-delegate method
-(void)requestFinished:(ASIHTTPRequest *)request{
    NSLog(@"finished");
    // Use when fetching text data
    //NSString *responseString = [request responseString];
    
    RZDetailViewController *detailC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:kDestControllerName];
    
    [self.navigationController pushViewController:detailC animated:YES];

    detailC.receive = [request responseData];
    
}
-(void)requestFailed:(ASIHTTPRequest *)request{
    NSError *error = [request error];
    NSLog(@"error:%@",error);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.BarCode.keyboardType =UIKeyboardTypeNumberPad;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

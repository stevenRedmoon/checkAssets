//
//  RZCardModel.m
//  checkCapital
//
//  Created by redmoon on 1/27/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import "RZCardModel.h"

#define krzID @"rzID"                    //润泽编号
#define kassetID @"assetID"              //资产类型（编号）
#define kassetName @"assetName"          //设备名称
#define kassetKind @"assetKind"          //规格型号
#define kunit @"unit"                    //单位
#define knumber @"number"                //数量
#define klocation @"location"            //安装位置
#define kmanufacturer @"manufacturer"    //生产厂家
#define kassetCondition @"assetCondition"//资产状况

@implementation RZCardModel

@synthesize rzID=_rzID;
@synthesize assetID=_assetID;
@synthesize assetName=_assetName;
@synthesize assetKind=_assetKind;
@synthesize unit=_unit;
@synthesize number=_number;
@synthesize location=_location;
@synthesize manufacturer=_manufacturer;
@synthesize assetCondition=_assetCondition;

-(instancetype)initWithDic:(NSDictionary*)dic
{
    if (self = [super init])
    {
        [self processOutsideDic:dic];
    }
    
    return self;
}
/**
 *  Make card model
 *
 *  @param dic Detail info from other DataSource
 *
 *  @return cardModel
 */
+(instancetype)cardModelWithDic:(NSDictionary*)dic
{
    return [[RZCardModel alloc]initWithDic:dic];
}
/**
 *  Process dictionary from outside into model
 */
-(void)processOutsideDic:(NSDictionary*)dic
{
    //process
    self.rzID = [dic objectForKey:krzID];
    self.assetID = [dic objectForKey:kassetID];
    self.assetName = [dic objectForKey:kassetName];
    self.assetKind = [dic objectForKey:kassetKind];
    self.unit = [dic objectForKey:kunit];
    self.number = [dic objectForKey:knumber];
    self.location = [dic objectForKey:klocation];
    self.manufacturer = [dic objectForKey:kmanufacturer];
    self.assetCondition = [dic objectForKey:kassetCondition];
}

@end

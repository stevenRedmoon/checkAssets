//
//  RZCardModel.h
//  checkCapital
//
//  Created by redmoon on 1/27/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RZCardModel : NSObject
{
    NSString *_rzID;             //润泽编号
    NSString *_assetID;          //资产类型（编号）
    NSString *_assetName;        //设备名称
    NSString *_assetKind;        //规格型号
    NSString *_unit;             //单位
    NSNumber *_number;           //数量
    NSString *_location;         //安装位置
    NSString *_manufacturer;     //生产厂家
    NSString *_assetCondition;   //资产状况
    
}
@property (nonatomic,copy)NSString *rzID;
@property (nonatomic,copy)NSString *assetID;
@property (nonatomic,copy)NSString *assetName;
@property (nonatomic,copy)NSString *assetKind;
@property (nonatomic,copy)NSString *unit;
@property (nonatomic,copy)NSNumber *number;
@property (nonatomic,copy)NSString *location;
@property (nonatomic,copy)NSString *manufacturer;
@property (nonatomic,copy)NSString *assetCondition;

-(instancetype)initWithDic:(NSDictionary*)dic;
+(instancetype)cardModelWithDic:(NSDictionary*)dic;
@end

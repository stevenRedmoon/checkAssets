//
//  macro.h
//  checkCapital
//
//  Created by redmoon on 1/29/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#ifndef checkCapital_macro_h
#define checkCapital_macro_h


//#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"[文件名：%s]\n" "[函数名：%s]\n" "[行号:%d]\n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else
//#define DLog(...)

#endif

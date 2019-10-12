//
//  NSObject+ZXKVO.h
//  ZXKVO
//
//  Created by 李兆祥 on 2018/8/22.
//  Copyright © 2018年 李兆祥. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

typedef void(^obsResultHandler) (id newData, id oldData,id owner);
@interface NSObject (ZXKVO)
/**
 KVO监听
 
 @param key 监听的key
 @param handler 监听结果回调
 */
-(void)zx_obsKey:(NSString *)key handler:(obsResultHandler)handler;

/**
 记录已经添加监听的keyPath与对应的block
 */
@property(strong,nonatomic,readonly)NSMutableDictionary *zx_observingKeyPathDictionary;
@end

NS_ASSUME_NONNULL_END

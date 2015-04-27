//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateParameterChanged.java
//

#ifndef _ImActorModelApiUpdatesUpdateParameterChanged_H_
#define _ImActorModelApiUpdatesUpdateParameterChanged_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateParameterChanged_HEADER 131

@interface ImActorModelApiUpdatesUpdateParameterChanged : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateParameterChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value;

- (instancetype)init;

- (NSString *)getKey;

- (NSString *)getValue;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateParameterChanged)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateParameterChanged *ImActorModelApiUpdatesUpdateParameterChanged_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateParameterChanged, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateParameterChanged)

#endif // _ImActorModelApiUpdatesUpdateParameterChanged_H_

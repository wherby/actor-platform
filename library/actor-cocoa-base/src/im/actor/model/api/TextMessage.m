//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/TextMessage.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/TextMessage.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/api/TextMessageEx.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiTextMessage () {
 @public
  NSString *text_;
  ImActorModelApiTextMessageEx *ext_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiTextMessage, text_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiTextMessage, ext_, ImActorModelApiTextMessageEx *)


#line 19
@implementation ImActorModelApiTextMessage


#line 24
- (instancetype)initWithNSString:(NSString *)text
withImActorModelApiTextMessageEx:(ImActorModelApiTextMessageEx *)ext {
  if (self = [super init]) {
    
#line 25
    self->text_ = text;
    
#line 26
    self->ext_ = ext;
  }
  return self;
}


#line 29
- (instancetype)init {
  return [super init];
}

- (jint)getHeader {
  
#line 34
  return 1;
}


#line 37
- (NSString *)getText {
  
#line 38
  return self->text_;
}


#line 41
- (ImActorModelApiTextMessageEx *)getExt {
  
#line 42
  return self->ext_;
}


#line 46
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->text_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values optBytesWithInt:3] != nil) {
    self->ext_ = ImActorModelApiTextMessageEx_fromBytesWithByteArray_([values getBytesWithInt:3]);
  }
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 55
  if (self->text_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:[self->ext_ buildContainer]];
  }
}

- (NSString *)description {
  NSString *res = @"struct TextMessage{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"text=", self->text_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", ext=", self->ext_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiTextMessage *)other {
  [super copyAllFieldsTo:other];
  other->text_ = text_;
  other->ext_ = ext_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiTextMessage)

// Autogenerated from Pigeon (v15.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "PushApi.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static FlutterError *createConnectionError(NSString *channelName) {
  return [FlutterError errorWithCode:@"channel-error" message:[NSString stringWithFormat:@"%@/%@/%@", @"Unable to establish connection on channel: '", channelName, @"'."] details:@""];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

/// # iOS UN (UserNotification) symbols
///
/// Dart/Flutter translation of the iOS permissions API. In a future release,
/// we may replace this API with a consistent API for all platforms that require
/// permissions to show notifications to the user.
/// UNAuthorizationStatus: Constants indicating whether the app is allowed to
/// schedule notifications.
///
/// See the [Apple documentation](https://developer.apple.com/documentation/usernotifications/unnotificationsettings/1648391-authorizationstatus) for more information
@implementation PUUNAuthorizationStatusBox
- (instancetype)initWithValue:(PUUNAuthorizationStatus)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

/// The type of notification the user will see
///
/// See the [Apple documentation](https://developer.apple.com/documentation/usernotifications/unalertstyle) for more information
@implementation PUUNAlertStyleBox
- (instancetype)initWithValue:(PUUNAlertStyle)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

/// The current configuration of a notification setting
///
/// See the [Apple documentation](https://developer.apple.com/documentation/usernotifications/unnotificationsetting) for more information
@implementation PUUNNotificationSettingBox
- (instancetype)initWithValue:(PUUNNotificationSetting)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

/// Conditions to show/reveal notification content to the user
///
/// See the [Apple documentation](https://developer.apple.com/documentation/usernotifications/unshowpreviewssetting) for more information
@implementation PUUNShowPreviewsSettingBox
- (instancetype)initWithValue:(PUUNShowPreviewsSetting)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@interface PURemoteMessage ()
+ (PURemoteMessage *)fromList:(NSArray *)list;
+ (nullable PURemoteMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PUNotification ()
+ (PUNotification *)fromList:(NSArray *)list;
+ (nullable PUNotification *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PUUNNotificationSettings ()
+ (PUUNNotificationSettings *)fromList:(NSArray *)list;
+ (nullable PUUNNotificationSettings *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PURemoteMessage
+ (instancetype)makeWithNotification:(nullable PUNotification *)notification
    data:(nullable NSDictionary<NSString *, id> *)data {
  PURemoteMessage* pigeonResult = [[PURemoteMessage alloc] init];
  pigeonResult.notification = notification;
  pigeonResult.data = data;
  return pigeonResult;
}
+ (PURemoteMessage *)fromList:(NSArray *)list {
  PURemoteMessage *pigeonResult = [[PURemoteMessage alloc] init];
  pigeonResult.notification = [PUNotification nullableFromList:(GetNullableObjectAtIndex(list, 0))];
  pigeonResult.data = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PURemoteMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [PURemoteMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.notification ? [self.notification toList] : [NSNull null]),
    self.data ?: [NSNull null],
  ];
}
@end

@implementation PUNotification
+ (instancetype)makeWithTitle:(nullable NSString *)title
    body:(nullable NSString *)body {
  PUNotification* pigeonResult = [[PUNotification alloc] init];
  pigeonResult.title = title;
  pigeonResult.body = body;
  return pigeonResult;
}
+ (PUNotification *)fromList:(NSArray *)list {
  PUNotification *pigeonResult = [[PUNotification alloc] init];
  pigeonResult.title = GetNullableObjectAtIndex(list, 0);
  pigeonResult.body = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PUNotification *)nullableFromList:(NSArray *)list {
  return (list) ? [PUNotification fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.title ?: [NSNull null],
    self.body ?: [NSNull null],
  ];
}
@end

@implementation PUUNNotificationSettings
+ (instancetype)makeWithAuthorizationStatus:(nullable PUUNAuthorizationStatusBox *)authorizationStatus
    soundSetting:(nullable PUUNNotificationSettingBox *)soundSetting
    badgeSetting:(nullable PUUNNotificationSettingBox *)badgeSetting
    alertSetting:(nullable PUUNNotificationSettingBox *)alertSetting
    notificationCenterSetting:(nullable PUUNNotificationSettingBox *)notificationCenterSetting
    lockScreenSetting:(nullable PUUNNotificationSettingBox *)lockScreenSetting
    carPlaySetting:(nullable PUUNNotificationSettingBox *)carPlaySetting
    alertStyle:(nullable PUUNAlertStyleBox *)alertStyle
    showPreviewsSetting:(nullable PUUNShowPreviewsSettingBox *)showPreviewsSetting
    criticalAlertSetting:(nullable PUUNNotificationSettingBox *)criticalAlertSetting
    providesAppNotificationSettings:(nullable NSNumber *)providesAppNotificationSettings
    announcementSetting:(nullable PUUNNotificationSettingBox *)announcementSetting {
  PUUNNotificationSettings* pigeonResult = [[PUUNNotificationSettings alloc] init];
  pigeonResult.authorizationStatus = authorizationStatus;
  pigeonResult.soundSetting = soundSetting;
  pigeonResult.badgeSetting = badgeSetting;
  pigeonResult.alertSetting = alertSetting;
  pigeonResult.notificationCenterSetting = notificationCenterSetting;
  pigeonResult.lockScreenSetting = lockScreenSetting;
  pigeonResult.carPlaySetting = carPlaySetting;
  pigeonResult.alertStyle = alertStyle;
  pigeonResult.showPreviewsSetting = showPreviewsSetting;
  pigeonResult.criticalAlertSetting = criticalAlertSetting;
  pigeonResult.providesAppNotificationSettings = providesAppNotificationSettings;
  pigeonResult.announcementSetting = announcementSetting;
  return pigeonResult;
}
+ (PUUNNotificationSettings *)fromList:(NSArray *)list {
  PUUNNotificationSettings *pigeonResult = [[PUUNNotificationSettings alloc] init];
  NSNumber *authorizationStatusAsNumber = GetNullableObjectAtIndex(list, 0);
  PUUNAuthorizationStatusBox *authorizationStatus = authorizationStatusAsNumber == nil ? nil : [[PUUNAuthorizationStatusBox alloc] initWithValue:[authorizationStatusAsNumber integerValue]];
  pigeonResult.authorizationStatus = authorizationStatus;
  NSNumber *soundSettingAsNumber = GetNullableObjectAtIndex(list, 1);
  PUUNNotificationSettingBox *soundSetting = soundSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[soundSettingAsNumber integerValue]];
  pigeonResult.soundSetting = soundSetting;
  NSNumber *badgeSettingAsNumber = GetNullableObjectAtIndex(list, 2);
  PUUNNotificationSettingBox *badgeSetting = badgeSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[badgeSettingAsNumber integerValue]];
  pigeonResult.badgeSetting = badgeSetting;
  NSNumber *alertSettingAsNumber = GetNullableObjectAtIndex(list, 3);
  PUUNNotificationSettingBox *alertSetting = alertSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[alertSettingAsNumber integerValue]];
  pigeonResult.alertSetting = alertSetting;
  NSNumber *notificationCenterSettingAsNumber = GetNullableObjectAtIndex(list, 4);
  PUUNNotificationSettingBox *notificationCenterSetting = notificationCenterSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[notificationCenterSettingAsNumber integerValue]];
  pigeonResult.notificationCenterSetting = notificationCenterSetting;
  NSNumber *lockScreenSettingAsNumber = GetNullableObjectAtIndex(list, 5);
  PUUNNotificationSettingBox *lockScreenSetting = lockScreenSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[lockScreenSettingAsNumber integerValue]];
  pigeonResult.lockScreenSetting = lockScreenSetting;
  NSNumber *carPlaySettingAsNumber = GetNullableObjectAtIndex(list, 6);
  PUUNNotificationSettingBox *carPlaySetting = carPlaySettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[carPlaySettingAsNumber integerValue]];
  pigeonResult.carPlaySetting = carPlaySetting;
  NSNumber *alertStyleAsNumber = GetNullableObjectAtIndex(list, 7);
  PUUNAlertStyleBox *alertStyle = alertStyleAsNumber == nil ? nil : [[PUUNAlertStyleBox alloc] initWithValue:[alertStyleAsNumber integerValue]];
  pigeonResult.alertStyle = alertStyle;
  NSNumber *showPreviewsSettingAsNumber = GetNullableObjectAtIndex(list, 8);
  PUUNShowPreviewsSettingBox *showPreviewsSetting = showPreviewsSettingAsNumber == nil ? nil : [[PUUNShowPreviewsSettingBox alloc] initWithValue:[showPreviewsSettingAsNumber integerValue]];
  pigeonResult.showPreviewsSetting = showPreviewsSetting;
  NSNumber *criticalAlertSettingAsNumber = GetNullableObjectAtIndex(list, 9);
  PUUNNotificationSettingBox *criticalAlertSetting = criticalAlertSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[criticalAlertSettingAsNumber integerValue]];
  pigeonResult.criticalAlertSetting = criticalAlertSetting;
  pigeonResult.providesAppNotificationSettings = GetNullableObjectAtIndex(list, 10);
  NSNumber *announcementSettingAsNumber = GetNullableObjectAtIndex(list, 11);
  PUUNNotificationSettingBox *announcementSetting = announcementSettingAsNumber == nil ? nil : [[PUUNNotificationSettingBox alloc] initWithValue:[announcementSettingAsNumber integerValue]];
  pigeonResult.announcementSetting = announcementSetting;
  return pigeonResult;
}
+ (nullable PUUNNotificationSettings *)nullableFromList:(NSArray *)list {
  return (list) ? [PUUNNotificationSettings fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.authorizationStatus == nil ? [NSNull null] : [NSNumber numberWithInteger:self.authorizationStatus.value]),
    (self.soundSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.soundSetting.value]),
    (self.badgeSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.badgeSetting.value]),
    (self.alertSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.alertSetting.value]),
    (self.notificationCenterSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.notificationCenterSetting.value]),
    (self.lockScreenSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.lockScreenSetting.value]),
    (self.carPlaySetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.carPlaySetting.value]),
    (self.alertStyle == nil ? [NSNull null] : [NSNumber numberWithInteger:self.alertStyle.value]),
    (self.showPreviewsSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.showPreviewsSetting.value]),
    (self.criticalAlertSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.criticalAlertSetting.value]),
    self.providesAppNotificationSettings ?: [NSNull null],
    (self.announcementSetting == nil ? [NSNull null] : [NSNumber numberWithInteger:self.announcementSetting.value]),
  ];
}
@end

@interface PUPushHostApiCodecReader : FlutterStandardReader
@end
@implementation PUPushHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PUNotification fromList:[self readValue]];
    case 129: 
      return [PURemoteMessage fromList:[self readValue]];
    case 130: 
      return [PUUNNotificationSettings fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PUPushHostApiCodecWriter : FlutterStandardWriter
@end
@implementation PUPushHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PUNotification class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PURemoteMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PUUNNotificationSettings class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PUPushHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PUPushHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PUPushHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PUPushHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PUPushHostApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PUPushHostApiCodecReaderWriter *readerWriter = [[PUPushHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpPUPushHostApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PUPushHostApi> *api) {
  /// Returns null if it doesn't exist.
  /// See [PushFlutterApi.onNotificationTap] to understand why a RemoteMessage is not provided here.
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.getNotificationTapWhichLaunchedTerminatedApp"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getNotificationTapWhichLaunchedTerminatedAppWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getNotificationTapWhichLaunchedTerminatedAppWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSDictionary<NSString *, id> *output = [api getNotificationTapWhichLaunchedTerminatedAppWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.getToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getTokenWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getTokenWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getTokenWithCompletion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.backgroundFlutterApplicationReady"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(backgroundFlutterApplicationReadyWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(backgroundFlutterApplicationReadyWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api backgroundFlutterApplicationReadyWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.onListenToOnNewToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onListenToOnNewTokenWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(onListenToOnNewTokenWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api onListenToOnNewTokenWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.onCancelToOnNewToken"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onCancelToOnNewTokenWithError:)], @"PUPushHostApi api (%@) doesn't respond to @selector(onCancelToOnNewTokenWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api onCancelToOnNewTokenWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  /// Pass true for the option you want permission to use
  /// Returns true if permission was granted.
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.requestPermission"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionBadge:sound:alert:carPlay:criticalAlert:provisional:providesAppNotificationSettings:announcement:completion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(requestPermissionBadge:sound:alert:carPlay:criticalAlert:provisional:providesAppNotificationSettings:announcement:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        BOOL arg_badge = [GetNullableObjectAtIndex(args, 0) boolValue];
        BOOL arg_sound = [GetNullableObjectAtIndex(args, 1) boolValue];
        BOOL arg_alert = [GetNullableObjectAtIndex(args, 2) boolValue];
        BOOL arg_carPlay = [GetNullableObjectAtIndex(args, 3) boolValue];
        BOOL arg_criticalAlert = [GetNullableObjectAtIndex(args, 4) boolValue];
        BOOL arg_provisional = [GetNullableObjectAtIndex(args, 5) boolValue];
        BOOL arg_providesAppNotificationSettings = [GetNullableObjectAtIndex(args, 6) boolValue];
        BOOL arg_announcement = [GetNullableObjectAtIndex(args, 7) boolValue];
        [api requestPermissionBadge:arg_badge sound:arg_sound alert:arg_alert carPlay:arg_carPlay criticalAlert:arg_criticalAlert provisional:arg_provisional providesAppNotificationSettings:arg_providesAppNotificationSettings announcement:arg_announcement completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.getNotificationSettings"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getNotificationSettingsWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(getNotificationSettingsWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getNotificationSettingsWithCompletion:^(PUUNNotificationSettings *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.push_platform_interface.PushHostApi.areNotificationsEnabled"
        binaryMessenger:binaryMessenger
        codec:PUPushHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(areNotificationsEnabledWithCompletion:)], @"PUPushHostApi api (%@) doesn't respond to @selector(areNotificationsEnabledWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api areNotificationsEnabledWithCompletion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
@interface PUPushFlutterApiCodecReader : FlutterStandardReader
@end
@implementation PUPushFlutterApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PUNotification fromList:[self readValue]];
    case 129: 
      return [PURemoteMessage fromList:[self readValue]];
    case 130: 
      return [PUUNNotificationSettings fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PUPushFlutterApiCodecWriter : FlutterStandardWriter
@end
@implementation PUPushFlutterApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PUNotification class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PURemoteMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PUUNNotificationSettings class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PUPushFlutterApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PUPushFlutterApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PUPushFlutterApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PUPushFlutterApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PUPushFlutterApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PUPushFlutterApiCodecReaderWriter *readerWriter = [[PUPushFlutterApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface PUPushFlutterApi ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation PUPushFlutterApi

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onMessageMessage:(PURemoteMessage *)arg_message completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.push_platform_interface.PushFlutterApi.onMessage";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_message ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onBackgroundMessageMessage:(PURemoteMessage *)arg_message completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.push_platform_interface.PushFlutterApi.onBackgroundMessage";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_message ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onNotificationTapData:(NSDictionary<NSString *, id> *)arg_data completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.push_platform_interface.PushFlutterApi.onNotificationTap";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_data ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onNewTokenToken:(NSString *)arg_token completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.push_platform_interface.PushFlutterApi.onNewToken";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:@[arg_token ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onOpenNotificationSettingsWithCompletion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.push_platform_interface.PushFlutterApi.onOpenNotificationSettings";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:PUPushFlutterApiGetCodec()];
  [channel sendMessage:nil reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
@end


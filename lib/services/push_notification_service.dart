import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationServices {
  static final FirebaseMessaging _fcm = FirebaseMessaging();
  static Future initialise() async
  {
    if(Platform.isIOS)
      {
        _fcm.requestNotificationPermissions(IosNotificationSettings());
      }

    _fcm.configure(
      onBackgroundMessage:  (Map<String, dynamic> message) async {
        print("onBackgroundMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },

      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },

      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },

    ) ;

  }


}
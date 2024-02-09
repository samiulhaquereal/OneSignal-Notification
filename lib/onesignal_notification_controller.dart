import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalNotification {
  Future<void> initNotification() async {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    //OneSignal.initialize(OneSignalAppID);
    OneSignal.Notifications.requestPermission(true);
    OneSignal.Notifications.addClickListener((event) {
      //Get.to(DisplayOneSignalNotificationScreen(),arguments: {'title':event.notification.title,'pic':event.notification.bigPicture,'details':event.notification.body});
    });
  }
}
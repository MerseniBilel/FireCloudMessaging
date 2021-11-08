import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "Home Controller";

  @override
  void onInit() async {
    //String? token = await FirebaseMessaging.instance.getToken();
    // application on the background and terminated

    // app on the background and terminated (the cool part)
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        final routeFromFireBase = event.data["route"];
        Get.toNamed(routeFromFireBase);
      }
    });

    //backround on the backgroun but not terminated (when click on notification => take user to page)
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      final routeFromFireBase = event.data["route"];
      Get.toNamed(routeFromFireBase);
    });

    // forground (matedem ken ki tebda el app ma7loula)
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.body);
        print(event.notification!.title);
      }
    });

    super.onInit();
  }
}

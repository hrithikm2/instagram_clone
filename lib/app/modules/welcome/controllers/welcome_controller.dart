import 'package:get/get.dart';
import 'package:instagram_clone/app/modules/login/views/login_view.dart';

class WelcomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  void increment() => count.value++;

  void onLoginTapped() => Get.to(() => LoginView());

  @override
  void onInit() {
    print(Get.isDarkMode);
    super.onInit();
  }
}

import 'package:deliver_app/buttonController.dart';
import 'package:get/get.dart';

class DependencyInjection extends Bindings{
  void dependencies(){

    Get.lazyPut(() => ButtonController(), fenix: true);
  }
}
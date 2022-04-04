import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  String get username => this._username.value;
  RxString _username = "Unknown user".obs;

  final GetStorage _getStorage = GetStorage();

  @override
  void onInit() {
    _username.value = _getStorage.read("username") ?? "Unkown User";

    super.onInit();
  }

  void changeUsername(String value) {
    _username.value = value;

    _getStorage.write("username", value);
  }
}

import 'package:get/get.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "change_username": "Change Username",
          "diary": "My Diary",
          "add": "Add",
        },
        "tr_TR": {
          "change_username": "İsim Değiştir",
          "diary": "Günlüğüm",
          "add": "Ekle",
        },
        "esp_ESP": {
          "change_username": "Cambie el nombre de usuario",
          "diary": "Mi Diario",
          "add": "Agregar",
        },
      };
}

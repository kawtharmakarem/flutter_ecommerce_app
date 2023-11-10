import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "chooseLang": "اختر اللغة",
          "ar":"عربي",
          "en":"انكليزي"

        },
        "en": {
          "chooseLang": "Choose Language",
          "ar":"Arabic",
          "en":"English"
          }
      };
}

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static SharedPreferences localstorage;

  static initializeLocalstorage() async {
    print("Initializing localstorage sharedpreferences");
    LocalStorageService.localstorage = await SharedPreferences.getInstance();
  }

}

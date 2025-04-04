import 'package:shared_preferences/shared_preferences.dart';

//I also decided to add shared preferences local storage so that the user
//can save the color they like as default color.

///Service for using shared preferences storage
class SharedPreferencesService {
  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  ///Factory constructor that returns _instance to make sure
  ///that service instance exists in single instance
  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  Future<SharedPreferences> _prefs() async =>
      SharedPreferences.getInstance();

  ///Method for saving generated color as initial
  Future<void> saveColorAsInitial({required String colorInHex}) async {
    final prefs = await _prefs();

    await prefs.setString('initial_color', colorInHex);
  }

  ///Method for getting color in hex format
  Future<String?> getHexColor() async {
    final prefs = await _prefs();

    final hexColor = prefs.getString('initial_color');

    return hexColor;
  }
}

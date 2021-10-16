
import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences{
  static SharedPreferences? _preferences;
  static  const String _keyList='list';

  static Future init() async=> _preferences=await SharedPreferences.getInstance();

  ///To save the List of food the User saved///
  static Future setSavedList(List<String> savingList)async=>
      await _preferences!.setStringList(_keyList, savingList);

  ///To get the List on the saved Screen///
  static List<String>? getSavedList(List<String> savingList)=>_preferences!.getStringList(_keyList);

}
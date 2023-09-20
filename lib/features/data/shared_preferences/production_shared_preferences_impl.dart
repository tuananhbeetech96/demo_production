

import 'dart:convert';

import 'package:music_app/features/data/models/login_model/login_response_model.dart';
import 'package:music_app/features/data/shared_preferences/production_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/app_constants.dart';

class ProductionSharedPreferenceImpl implements ProductionSharedPreferences{
  SharedPreferences productionSharedPref;
  ProductionSharedPreferenceImpl(this.productionSharedPref);

  @override
  set user(LoginResponseModel? data) {
    if (data != null) {
        productionSharedPref.setString(PreferenceKey.user, jsonEncode(data));
    }
  }
  @override
  LoginResponseModel? get user {
    try {
    return LoginResponseModel.fromJson(json.decode(productionSharedPref.getString(PreferenceKey.user) ?? "") as Map<String, dynamic>);
    } catch (e) {
      return null;
    }
  }
}
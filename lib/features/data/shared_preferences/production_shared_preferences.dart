
import 'package:music_app/features/data/models/login_model/login_response_model.dart';

abstract class ProductionSharedPreferences {
  set user(LoginResponseModel? data);

  LoginResponseModel? get user;
}

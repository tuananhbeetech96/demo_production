import 'package:music_app/features/data/models/login_model/login_response_model.dart';

import '../../data/base/base_response.dart';
import '../../data/base/result.dart';
import '../../data/models/login_model/login_request_model.dart';

abstract class LoginRepository {
  Future<Result<BaseObjectResponse<LoginResponseModel>>> getLogin(LoginRequestModel model);
}
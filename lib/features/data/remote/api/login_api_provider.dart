import 'package:music_app/config/config.dart';
import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/models/login_model/login_response_model.dart';

import '../../base/base_dio.dart';
import '../../base/result.dart';
import '../../models/login_model/login_request_model.dart';

abstract class LoginApiProvider {
  Future<Result<BaseObjectResponse<LoginResponseModel>>> getLogin(LoginRequestModel model);
}

class LoginApiProviderImpl implements LoginApiProvider {
  final IBaseDio _baseDio;

  LoginApiProviderImpl(this._baseDio);

  @override
  Future<Result<BaseObjectResponse<LoginResponseModel>>> getLogin(LoginRequestModel model) => _baseDio.request(
    '${EnvConfig.baseAuthenUrl}login',
    fromJson: (json) => BaseObjectResponse.fromJson(json, const LoginResponseModel()),
    method: ApiMethod.post,
      part: {
      'mailaddress':  model.mailaddress,
      'password': model.password
    }
  );
}
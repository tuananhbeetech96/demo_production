import 'package:music_app/features/data/models/login_model/login_response_model.dart';
import 'package:music_app/features/domain/repositories/login_repository.dart';

import '../base/base_response.dart';
import '../base/result.dart';
import '../models/login_model/login_request_model.dart';
import '../remote/api/login_api_provider.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginApiProvider _loginApiProvider;

  LoginRepositoryImpl(this._loginApiProvider);

  @override
  Future<Result<BaseObjectResponse<LoginResponseModel>>> getLogin(LoginRequestModel model) =>
      _loginApiProvider.getLogin(model);
}
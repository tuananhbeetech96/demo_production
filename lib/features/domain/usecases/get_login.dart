import 'package:music_app/features/data/models/login_model/login_response_model.dart';
import 'package:music_app/features/domain/usecases/use_case.dart';

import '../../data/base/base_response.dart';
import '../../data/base/result.dart';
import '../../data/models/login_model/login_request_model.dart';
import '../repositories/login_repository.dart';

class GetLogin extends UseCase<BaseObjectResponse<LoginResponseModel>, LoginRequestModel> {
  final LoginRepository _loginRepository;

  GetLogin(this._loginRepository);

  @override
  Future<Result<BaseObjectResponse<LoginResponseModel>>> run(LoginRequestModel params) =>
      _loginRepository.getLogin(params);
}
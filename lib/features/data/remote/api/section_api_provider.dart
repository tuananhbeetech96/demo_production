
import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/models/section_model/section_request_model.dart';
import 'package:music_app/features/data/models/section_model/section_response_model.dart';

import '../../base/base_dio.dart';
import '../../base/result.dart';

abstract class SectionApiProvider {
  Future<Result<BaseListResponse<SectionResponseModel>>> getSection(SectionRequestModel model);
}

class SectionApiProviderImpl implements SectionApiProvider {
  final IBaseDio _baseDio;

  SectionApiProviderImpl(this._baseDio);

  @override
  Future<Result<BaseListResponse<SectionResponseModel>>> getSection(SectionRequestModel model) => _baseDio.request(
      'section',
      fromJson: (json) => BaseListResponse.fromJson(json, const SectionResponseModel()),
      method: ApiMethod.get,
      queryParameters: {
        'token':  model.token,
        'refresh_token': model.refreshToken
      }
  );
}
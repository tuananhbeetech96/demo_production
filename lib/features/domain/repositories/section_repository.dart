
import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/models/section_model/section_request_model.dart';
import 'package:music_app/features/data/models/section_model/section_response_model.dart';

import '../../data/base/result.dart';
import '../../data/remote/api/section_api_provider.dart';

abstract class SectionRepository {
  Future<Result<BaseListResponse<SectionResponseModel>>> getSection(SectionRequestModel model);
}

class SectionRepositoryImpl implements SectionRepository {
  final SectionApiProvider _sectionApiProvider;

  SectionRepositoryImpl(this._sectionApiProvider);

  @override
  Future<Result<BaseListResponse<SectionResponseModel>>> getSection(SectionRequestModel requestModel) {
    return _sectionApiProvider.getSection(requestModel);
  }

}
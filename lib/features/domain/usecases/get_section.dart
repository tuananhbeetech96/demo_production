

import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/models/section_model/section_request_model.dart';
import 'package:music_app/features/data/models/section_model/section_response_model.dart';
import 'package:music_app/features/domain/usecases/use_case.dart';

import '../../data/base/result.dart';
import '../repositories/section_repository.dart';

class GetSection extends UseCase<BaseListResponse<SectionResponseModel>, SectionRequestModel> {
  final SectionRepository _sectionRepository;

  GetSection(this._sectionRepository);

  @override
  Future<Result<BaseListResponse<SectionResponseModel>>> run(SectionRequestModel params) =>
      _sectionRepository.getSection(params);
}
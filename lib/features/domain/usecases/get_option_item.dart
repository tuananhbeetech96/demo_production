

import 'package:music_app/features/data/models/option_item/option_item_model.dart';
import 'package:music_app/features/data/models/option_item/option_item_request_model.dart';
import 'package:music_app/features/domain/repositories/option_item_repository.dart';
import 'package:music_app/features/domain/usecases/use_case.dart';

import '../../data/base/base_response.dart';
import '../../data/base/result.dart';

class GetOptionItem extends UseCase<BaseListResponse<OptionItemResponseModel>, OptionItemRequestModel> {
  final OptionItemRepository _optionItemRepository;

  GetOptionItem(this._optionItemRepository);

  @override
  Future<Result<BaseListResponse<OptionItemResponseModel>>> run(OptionItemRequestModel params) =>
      _optionItemRepository.getOptionItem(params);
}
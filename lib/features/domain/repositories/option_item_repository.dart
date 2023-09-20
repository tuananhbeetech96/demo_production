

import '../../data/base/base_response.dart';
import '../../data/base/result.dart';
import '../../data/models/option_item/option_item_model.dart';
import '../../data/models/option_item/option_item_request_model.dart';
import '../../data/remote/api/option_item_api_provider.dart';

abstract class OptionItemRepository {
  Future<Result<BaseListResponse<OptionItemResponseModel>>> getOptionItem(OptionItemRequestModel model);
}

class OptionItemRepositoryImpl implements OptionItemRepository {
  final OptionItemApiProvider _optionItemApiProvider;

  OptionItemRepositoryImpl(this._optionItemApiProvider);

  @override
  Future<Result<BaseListResponse<OptionItemResponseModel>>> getOptionItem(OptionItemRequestModel requestModel) {
    return _optionItemApiProvider.getOptionItem(requestModel);
  }
}
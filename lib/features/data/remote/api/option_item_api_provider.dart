
import 'package:music_app/features/data/models/option_item/option_item_model.dart';

import '../../base/base_dio.dart';
import '../../base/base_response.dart';
import '../../base/result.dart';
import '../../models/option_item/option_item_request_model.dart';

abstract class OptionItemApiProvider {
  Future<Result<BaseListResponse<OptionItemResponseModel>>> getOptionItem(OptionItemRequestModel model);
}

class OptionItemApiProviderImpl implements OptionItemApiProvider {
  final IBaseDio _baseDio;

  OptionItemApiProviderImpl(this._baseDio);

  @override
  Future<Result<BaseListResponse<OptionItemResponseModel>>> getOptionItem(OptionItemRequestModel model) => _baseDio.request(
      'section',
      fromJson: (json) => BaseListResponse.fromJson(json, const OptionItemResponseModel()),
      method: ApiMethod.get,
      queryParameters: {
        'token':  model.token,
        'type' : model.type,
        'refresh_token': model.refreshToken
      }
  );
}
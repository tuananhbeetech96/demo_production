import 'package:music_app/features/data/base/base_dio.dart';
import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/base/result.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/domain/entity/request/search_request.dart';



abstract class ProductManagementApiProvider {
  Future<Result<BaseObjectResponse<SearchModel>>> search(SearchRequest searchRequest);
}

class ProductManagementApiProviderImpl implements ProductManagementApiProvider {
  final IBaseDio _baseDio;

  ProductManagementApiProviderImpl(this._baseDio);

  @override
  Future<Result<BaseObjectResponse<SearchModel>>> search(SearchRequest searchRequest)
        => _baseDio.request(
    'search',
          method: ApiMethod.post,
          queryParameters: {'page': searchRequest.page, 'per_page': searchRequest.perPage},
          part: searchRequest.toMap(),
          fromJson: (json) => BaseObjectResponse<SearchModel>.fromJson(json,SearchModel.fromJson(json["data"])),
  );


}

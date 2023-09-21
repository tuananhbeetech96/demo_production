
import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/data/remote/api/productmanagement_api_provider.dart';
import 'package:music_app/features/domain/entity/request/search_request.dart';

import '../../data/base/result.dart';

abstract class ProductManagementRepository {
  Future<Result<BaseObjectResponse<SearchModel>>> search(SearchRequest searchRequest);
}

class ProductManagementRepositoryImpl implements ProductManagementRepository {
  final ProductManagementApiProvider _productManagementApiProvider;

  ProductManagementRepositoryImpl(this._productManagementApiProvider);

  @override
  Future<Result<BaseObjectResponse<SearchModel>>> search(SearchRequest searchRequest) {
      return _productManagementApiProvider.search(searchRequest);
  }

}
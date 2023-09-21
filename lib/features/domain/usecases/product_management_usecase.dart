import 'package:music_app/features/data/base/base_response.dart';
import 'package:music_app/features/data/base/result.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/domain/entity/request/search_request.dart';
import 'package:music_app/features/domain/repositories/product_management_repository.dart';
import 'package:music_app/features/domain/usecases/use_case.dart';


class ProductManagementUseCase extends UseCase<BaseObjectResponse<SearchModel>, SearchRequest> {
  final ProductManagementRepository _productManagementRepository;

  ProductManagementUseCase(this._productManagementRepository);

  @override
  Future<Result<BaseObjectResponse<SearchModel>>> run(SearchRequest params) =>
      _productManagementRepository.search(params);

}

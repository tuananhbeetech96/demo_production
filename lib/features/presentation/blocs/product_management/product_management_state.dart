import 'package:music_app/features/data/exception/failure.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/domain/entity/product_data_factory.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';

class ProductManagementState extends BaseState{

  final SearchState? searchState;
  final bool canLoadMore;

  const ProductManagementState({super.isLoading, super.error, this.searchState,this.canLoadMore = false});

  @override
  copyWith({bool isLoading = false, Failure? error,SearchState? searchState,bool? canLoadMore}) {
    return ProductManagementState(isLoading: isLoading,error: error,searchState: searchState ?? this.searchState,canLoadMore: canLoadMore ?? this.canLoadMore);
  }

}

class SearchState {
  ProductDataFactory? productDataFactory;

  SearchState(this.productDataFactory);
}
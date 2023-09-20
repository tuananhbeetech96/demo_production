import 'package:music_app/features/data/exception/failure.dart';
import 'package:music_app/features/data/models/option_item/option_item_model.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/data/models/section_model/section_response_model.dart';
import 'package:music_app/features/domain/entity/product_data_factory.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';

import '../../../data/base/base_response.dart';

class ProductManagementState extends BaseState{

  final SearchState? searchState;
  final bool canLoadMore;
  final BaseListResponse<SectionResponseModel>? section;
  final BaseListResponse<OptionItemResponseModel>? optionItem;

  const ProductManagementState({super.isLoading, super.error, this.searchState,this.canLoadMore = false, this.section, this.optionItem});

  @override
  copyWith({bool isLoading = false, Failure? error,SearchState? searchState,bool? canLoadMore, BaseListResponse<SectionResponseModel>? section, BaseListResponse<OptionItemResponseModel>? optionItem}) {
    return ProductManagementState(isLoading: isLoading,error: error,searchState: searchState ?? this.searchState,canLoadMore: canLoadMore ?? this.canLoadMore,
        section: section,
        optionItem: optionItem);
  }

}

class SearchState {
  ProductDataFactory? productDataFactory;

  SearchState(this.productDataFactory);
}
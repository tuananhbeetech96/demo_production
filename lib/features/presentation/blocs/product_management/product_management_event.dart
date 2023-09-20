abstract class ProductManagementEvent {}

class SearchEvent extends ProductManagementEvent{
  final bool isRefresh ;

  SearchEvent({this.isRefresh = true});
}
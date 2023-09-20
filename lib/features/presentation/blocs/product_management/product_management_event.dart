abstract class ProductManagementEvent {}

class SearchEvent extends ProductManagementEvent{
  final bool isRefresh ;

  SearchEvent({this.isRefresh = true});
}

class GetSectionEvent extends ProductManagementEvent {
  final String token;
  final String refreshToken;
  GetSectionEvent(this.token, this.refreshToken);
}

class GetOptionItemEvent extends ProductManagementEvent {
  final String token;
  final String refreshToken;
  final int type;
  GetOptionItemEvent(this.token, this.refreshToken, this.type);
}
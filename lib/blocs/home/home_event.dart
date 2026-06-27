abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class RefreshMetroStatusEvent extends HomeEvent {}

class SearchLocationEvent extends HomeEvent {
  final String query;
  SearchLocationEvent(this.query);
}

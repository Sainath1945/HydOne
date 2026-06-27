import '../../models/metro_line.dart';
import '../../models/service.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final String userName;
  final String location;
  final List<MetroLine> metroLines;
  final List<Service> nearbyServices;

  HomeLoadedState({
    required this.userName,
    required this.location,
    required this.metroLines,
    required this.nearbyServices,
  });
}

class HomeErrorState extends HomeState {
  final String message;
  HomeErrorState(this.message);
}

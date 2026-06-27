import '../../models/metro_tracking.dart';

abstract class MetroTrackingState {}

class MetroTrackingInitialState extends MetroTrackingState {}

class MetroTrackingLoadingState extends MetroTrackingState {}

class MetroTrackingLoadedState extends MetroTrackingState {
  final MetroTrackingInfo trackingInfo;

  MetroTrackingLoadedState({required this.trackingInfo});
}

class MetroTrackingErrorState extends MetroTrackingState {
  final String message;
  MetroTrackingErrorState(this.message);
}

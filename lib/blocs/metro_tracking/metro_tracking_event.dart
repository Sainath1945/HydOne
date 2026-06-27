abstract class MetroTrackingEvent {}

class MetroTrackingInitialEvent extends MetroTrackingEvent {
  final String metroLineName;
  MetroTrackingInitialEvent(this.metroLineName);
}

class RefreshTrackingEvent extends MetroTrackingEvent {}

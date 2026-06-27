class Station {
  final String name;
  final DateTime? arrivalTime;
  final bool isCompleted;
  final bool isCurrentStation;

  Station({
    required this.name,
    this.arrivalTime,
    required this.isCompleted,
    required this.isCurrentStation,
  });
}

class MetroTrackingInfo {
  final String fromStation;
  final String toStation;
  final String lineName;
  final String lineDescription;
  final bool isLive;
  final String nextStation;
  final int nextStationTime; // in minutes
  final int arrivingIn; // in minutes
  final double distance; // in km
  final int speed; // in km/h
  final List<Station> stations;
  final int totalTime; // in minutes
  final double totalDistance; // in km
  final int totalStations;
  final int fare; // in rupees
  final int currentStationIndex;

  MetroTrackingInfo({
    required this.fromStation,
    required this.toStation,
    required this.lineName,
    required this.lineDescription,
    required this.isLive,
    required this.nextStation,
    required this.nextStationTime,
    required this.arrivingIn,
    required this.distance,
    required this.speed,
    required this.stations,
    required this.totalTime,
    required this.totalDistance,
    required this.totalStations,
    required this.fare,
    required this.currentStationIndex,
  });
}

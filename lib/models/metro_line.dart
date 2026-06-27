class MetroLine {
  final String name;
  final String destination;
  final int duration; // in minutes
  final String status;
  final int color;

  MetroLine({
    required this.name,
    required this.destination,
    required this.duration,
    required this.status,
    required this.color,
  });
}

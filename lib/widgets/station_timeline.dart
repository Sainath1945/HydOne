import 'package:flutter/material.dart';
import '../models/metro_tracking.dart';

class StationTimeline extends StatelessWidget {
  final List<Station> stations;
  final int currentStationIndex;

  const StationTimeline({
    Key? key,
    required this.stations,
    required this.currentStationIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(stations.length, (index) {
        final station = stations[index];
        final isCompleted = station.isCompleted;
        final isCurrent = station.isCurrentStation;
        final isLast = index == stations.length - 1;

        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timeline line and circle
                SizedBox(
                  width: 50,
                  child: Column(
                    children: [
                      // Circle indicator
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isCurrent
                              ? const Color(0xFFD32F2F)
                              : isCompleted
                                  ? const Color(0xFF00695C)
                                  : Colors.grey[300],
                        ),
                        child: isCurrent
                            ? const Icon(
                                Icons.train,
                                size: 14,
                                color: Colors.white,
                              )
                            : isCompleted
                                ? const Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.white,
                                  )
                                : null,
                      ),
                      // Vertical line
                      if (!isLast)
                        Container(
                          width: 2,
                          height: 60,
                          color: isCompleted
                              ? const Color(0xFF00695C)
                              : Colors.grey[300],
                          margin: const EdgeInsets.only(top: 4),
                        ),
                    ],
                  ),
                ),
                // Station info
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          station.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isCurrent
                                ? const Color(0xFFD32F2F)
                                : const Color(0xFF424242),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (isCurrent)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFD32F2F),
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Current Station',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFD32F2F),
                                  ),
                                ),
                              ),
                            if (station.arrivalTime != null)
                              Text(
                                '${station.arrivalTime!.hour.toString().padLeft(2, '0')}:${station.arrivalTime!.minute.toString().padLeft(2, '0')} ${station.arrivalTime!.hour >= 12 ? 'PM' : 'AM'}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF008080),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (!isLast) const SizedBox(height: 16),
          ],
        );
      }),
    );
  }
}

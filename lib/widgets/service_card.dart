import 'package:flutter/material.dart';
import '../models/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Map service names to icons
    IconData getIcon(String name) {
      switch (name.toLowerCase()) {
        case 'parking':
          return Icons.local_parking;
        case 'atms':
          return Icons.atm;
        case 'hospitals':
          return Icons.local_hospital;
        case 'tourist places':
          return Icons.travel_explore;
        default:
          return Icons.location_on;
      }
    }

    Color getIconColor(String name) {
      switch (name.toLowerCase()) {
        case 'parking':
          return const Color(0xFF9C27B0);
        case 'atms':
          return const Color(0xFF4CAF50);
        case 'hospitals':
          return const Color(0xFFE91E63);
        case 'tourist places':
          return const Color(0xFF2196F3);
        default:
          return const Color(0xFF2196F3);
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFEEEEEE),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: getIconColor(service.name).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(
              getIcon(service.name),
              color: getIconColor(service.name),
              size: 20,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            service.name,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF424242),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2),
          Text(
            service.count,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF9E9E9E),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

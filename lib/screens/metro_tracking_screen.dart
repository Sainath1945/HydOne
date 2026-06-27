import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/metro_tracking/metro_tracking_bloc.dart';
import '../blocs/metro_tracking/metro_tracking_event.dart';
import '../blocs/metro_tracking/metro_tracking_state.dart';
import '../themes/app_theme.dart';
import '../widgets/journey_info_card.dart';
import '../widgets/station_timeline.dart';

class MetroTrackingScreen extends StatefulWidget {
  final String metroLineName;

  const MetroTrackingScreen({
    Key? key,
    required this.metroLineName,
  }) : super(key: key);

  @override
  State<MetroTrackingScreen> createState() => _MetroTrackingScreenState();
}

class _MetroTrackingScreenState extends State<MetroTrackingScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<MetroTrackingBloc>()
        .add(MetroTrackingInitialEvent(widget.metroLineName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF424242)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Metro Live Tracking',
          style: TextStyle(
            color: Color(0xFF424242),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications,
                color: Color(0xFF008080)),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder<MetroTrackingBloc, MetroTrackingState>(
        builder: (context, state) {
          if (state is MetroTrackingLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppTheme.primaryTeal,
              ),
            );
          }

          if (state is MetroTrackingErrorState) {
            return Center(
              child: Text(state.message),
            );
          }

          if (state is MetroTrackingLoadedState) {
            final info = state.trackingInfo;

            return SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // From - To Section
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'From',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.primaryTeal,
                                    ),
                                    child: const Icon(
                                      Icons.train,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        info.fromStation,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF424242),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              const Icon(
                                Icons.arrow_upward,
                                color: AppTheme.primaryTeal,
                                size: 20,
                              ),
                              const SizedBox(height: 4),
                              const Icon(
                                Icons.arrow_downward,
                                color: AppTheme.primaryTeal,
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                info.toStation,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Line Info Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFD32F2F),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    info.lineName,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF424242),
                                    ),
                                  ),
                                ],
                              ),
                              if (info.isLive)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF00695C),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.broadcast_on_personal,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Live',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            info.lineDescription,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Metro Map Placeholder
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.map,
                              size: 48,
                              color: Colors.grey[400],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Metro Route Map',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Next Station Info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildNextStationInfo(
                                'Next Station',
                                info.nextStation,
                                '(${info.nextStationTime} min)',
                              ),
                              _buildNextStationInfo(
                                'Arriving In',
                                '${info.arrivingIn}',
                                'min',
                              ),
                              _buildNextStationInfo(
                                'Distance',
                                '${info.distance}',
                                'km',
                              ),
                              _buildNextStationInfo(
                                'Speed',
                                '${info.speed}',
                                'km/h',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Station Timeline
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StationTimeline(
                          stations: info.stations,
                          currentStationIndex: info.currentStationIndex,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Journey Information
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Journey Information',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 16),
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          children: [
                            JourneyInfoCard(
                              icon: Icons.schedule,
                              label: 'Total Time',
                              value: '${info.totalTime} min',
                              color: const Color(0xFF2196F3),
                            ),
                            JourneyInfoCard(
                              icon: Icons.location_on,
                              label: 'Total Distance',
                              value: '${info.totalDistance} km',
                              color: const Color(0xFF008080),
                            ),
                            JourneyInfoCard(
                              icon: Icons.train,
                              label: 'Stations',
                              value: '${info.totalStations}',
                              color: const Color(0xFFFFC107),
                            ),
                            JourneyInfoCard(
                              icon: Icons.wallet_giftcard,
                              label: 'Fare',
                              value: '₹${info.fare}',
                              color: const Color(0xFFE91E63),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            );
          }

          return const Center(child: Text('Unknown state'));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Metro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Bus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.traffic),
            label: 'Traffic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }

  Widget _buildNextStationInfo(String label, String value, String unit) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Color(0xFF9E9E9E),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF424242),
              ),
            ),
            const SizedBox(width: 2),
            Text(
              unit,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9E9E9E),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

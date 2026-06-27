import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/home/home_bloc.dart';
import '../blocs/home/home_event.dart';
import '../blocs/home/home_state.dart';
import '../blocs/metro_tracking/metro_tracking_bloc.dart';
import '../themes/app_theme.dart';
import '../widgets/metro_card.dart';
import '../widgets/quick_action_button.dart';
import '../widgets/service_card.dart';
import 'buses_screen.dart';
import 'food_screen.dart';
import 'metro_tracking_screen.dart';
import 'temples_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppTheme.primaryTeal,
              ),
            );
          }

          if (state is HomeErrorState) {
            return Center(
              child: Text(state.message),
            );
          }

          if (state is HomeLoadedState) {
            return SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with greeting and location
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Good Morning, ${state.userName}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text('👋',
                                        style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: AppTheme.primaryTeal,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      state.location,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppTheme.mediumGray,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/profile.jpg',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Icon(Icons.person);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Where are you going?',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppTheme.lightGray,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Quick Navigation Buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: QuickActionButton(
                            icon: Icons.home,
                            label: 'Home',
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: QuickActionButton(
                            icon: Icons.work,
                            label: 'Work',
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: QuickActionButton(
                            icon: Icons.add_circle_outline,
                            label: 'Add',
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: QuickActionButton(
                            icon: Icons.school,
                            label: 'College',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Live Metro Status
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Live Metro Status',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: AppTheme.primaryTeal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward,
                                color: AppTheme.primaryTeal,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Metro Cards
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        for (var i = 0; i < state.metroLines.length; i++) ...[
                          SizedBox(
                            width: 280,
                            child: MetroCard(
                              metroLine: state.metroLines[i],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BlocProvider(
                                          create: (context) =>
                                              MetroTrackingBloc(),
                                          child: MetroTrackingScreen(
                                            metroLineName:
                                                state.metroLines[i].name,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                          ),
                          if (i < state.metroLines.length - 1)
                            const SizedBox(width: 16),
                        ],
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Quick Actions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quick Actions',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Customize',
                                style: TextStyle(
                                  color: AppTheme.primaryTeal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.tune,
                                color: AppTheme.primaryTeal,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Quick Actions Grid
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      children: [
                        _buildQuickActionItem(
                          Icons.train,
                          'Metro',
                          const Color(0xFF008080),
                          onTap: () {},
                        ),
                        _buildQuickActionItem(
                          Icons.directions_bus,
                          'Bus',
                          const Color(0xFF2196F3),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BusesScreen(),
                              ),
                            );
                          },
                        ),
                        _buildQuickActionItem(
                          Icons.directions_car,
                          'All Rides',
                          const Color(0xFFFFC107),
                          iconWidget: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Icon(
                                Icons.directions_car,
                                size: 18,
                                color: Color(0xFFFFC107),
                              ),
                              Positioned(
                                left: 8,
                                bottom: 0,
                                child: Icon(
                                  Icons.pedal_bike,
                                  size: 14,
                                  color: const Color(0xFFFFC107),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        _buildQuickActionItem(
                          Icons.temple_buddhist,
                          'Temples',
                          const Color(0xFF8E24AA),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TemplesScreen(),
                              ),
                            );
                          },
                        ),
                        _buildQuickActionItem(
                          Icons.hotel,
                          'Hostels',
                          const Color(0xFF4CAF50),
                          onTap: () {},
                        ),
                        _buildQuickActionItem(
                          Icons.restaurant,
                          'Food',
                          const Color(0xFFFF9800),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FoodScreen(),
                              ),
                            );
                          },
                        ),
                        _buildQuickActionItem(
                          Icons.wb_sunny,
                          'Weather',
                          const Color(0xFF03A9F4),
                          onTap: () {},
                        ),
                        _buildQuickActionItem(
                          Icons.shopping_bag,
                          'Shopping',
                          const Color(0xFFE91E63),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Nearby Services
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nearby Services',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: AppTheme.primaryTeal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward,
                                color: AppTheme.primaryTeal,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Services Grid
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.8,
                      children: state.nearbyServices
                          .map((service) => ServiceCard(service: service))
                          .toList(),
                    ),
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            );
          }

          return const Center(child: Text('Unknown state'));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Routes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionItem(
    IconData icon,
    String label,
    Color color, {
    required VoidCallback onTap,
    Widget? iconWidget,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget ?? Icon(icon, color: color, size: 20),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
                color: color,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class BusStop {
  final String name;
  final String time;

  const BusStop({required this.name, required this.time});
}

class BusType {
  final String name;
  final String type;
  final double rating;
  final String stops;
  final String fare;
  final String description;
  final String imageUrl;
  final Color accentColor;
  final String fareCategory;
  final List<BusStop> schedules;
  final String boardingTime;
  final String arrivalTime;
  final String duration;
  final int totalSeats;
  final int availableSeats;

  const BusType({
    required this.name,
    required this.type,
    required this.rating,
    required this.stops,
    required this.fare,
    required this.description,
    required this.imageUrl,
    required this.accentColor,
    required this.fareCategory,
    required this.schedules,
    required this.boardingTime,
    required this.arrivalTime,
    required this.duration,
    required this.totalSeats,
    required this.availableSeats,
  });
}

class BusesScreen extends StatefulWidget {
  const BusesScreen({Key? key}) : super(key: key);

  @override
  State<BusesScreen> createState() => _BusesScreenState();
}

class _BusesScreenState extends State<BusesScreen> {
  String selectedCategory = 'All';

  final List<BusType> buses = const [
    BusType(
      name: 'City Ordinary',
      type: 'Ordinary',
      rating: 4.1,
      stops: 'All Stops',
      fare: 'Lowest Fare',
      description: 'Standard city bus with basic amenities',
      imageUrl: 'https://images.unsplash.com/photo-1570125909519-0a1dd7228f2d?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFFFF6B35),
      fareCategory: 'Orange',
      schedules: [
        BusStop(name: 'City Center', time: '6:00 AM'),
        BusStop(name: 'Main Station', time: '6:45 AM'),
        BusStop(name: 'Airport', time: '7:30 AM'),
      ],
      boardingTime: '6:00 AM',
      arrivalTime: '7:30 AM',
      duration: '1 hr 30 min',
      totalSeats: 45,
      availableSeats: 12,
    ),
    BusType(
      name: 'Metro Express',
      type: 'Express',
      rating: 4.3,
      stops: 'Major Stops',
      fare: 'Medium Fare',
      description: 'Express bus with air conditioning and comfort seating',
      imageUrl: 'https://images.unsplash.com/photo-1527786356703-4b100091cd2c?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF2196F3),
      fareCategory: 'Blue',
      schedules: [
        BusStop(name: 'City Center', time: '6:30 AM'),
        BusStop(name: 'Downtown', time: '7:00 AM'),
        BusStop(name: 'Airport', time: '8:00 AM'),
      ],
      boardingTime: '6:30 AM',
      arrivalTime: '8:00 AM',
      duration: '1 hr 30 min',
      totalSeats: 50,
      availableSeats: 8,
    ),
    BusType(
      name: 'Metro Deluxe',
      type: 'Deluxe',
      rating: 4.5,
      stops: 'Limited Stops',
      fare: 'Higher Fare',
      description: 'Premium deluxe bus with luxury seating and features',
      imageUrl: 'https://images.unsplash.com/photo-1531385944211-03e60074e0ca?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF4CAF50),
      fareCategory: 'Green',
      schedules: [
        BusStop(name: 'City Center', time: '7:00 AM'),
        BusStop(name: 'Business District', time: '7:45 AM'),
        BusStop(name: 'Airport', time: '8:45 AM'),
      ],
      boardingTime: '7:00 AM',
      arrivalTime: '8:45 AM',
      duration: '1 hr 45 min',
      totalSeats: 35,
      availableSeats: 5,
    ),
    BusType(
      name: 'E-Metro Express (Green Metro)',
      type: 'Electric',
      rating: 4.4,
      stops: 'Major Stops',
      fare: 'Medium Fare',
      description: 'Eco-friendly electric metro bus with modern amenities',
      imageUrl: 'https://images.unsplash.com/photo-1609435497037-76399d1cecea?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF4CAF50),
      fareCategory: 'Green',
      schedules: [
        BusStop(name: 'City Center', time: '6:15 AM'),
        BusStop(name: 'Tech Park', time: '7:00 AM'),
        BusStop(name: 'Airport', time: '8:00 AM'),
      ],
      boardingTime: '6:15 AM',
      arrivalTime: '8:00 AM',
      duration: '1 hr 45 min',
      totalSeats: 55,
      availableSeats: 15,
    ),
    BusType(
      name: 'E-Metro AC',
      type: 'AC',
      rating: 4.6,
      stops: 'Major Stops',
      fare: 'Higher Fare',
      description: 'Air-conditioned electric metro with premium comfort',
      imageUrl: 'https://images.unsplash.com/photo-1570125909519-0a1dd7228f2d?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      fareCategory: 'Teal',
      schedules: [
        BusStop(name: 'City Center', time: '7:30 AM'),
        BusStop(name: 'Business Zone', time: '8:15 AM'),
        BusStop(name: 'Airport', time: '9:15 AM'),
      ],
      boardingTime: '7:30 AM',
      arrivalTime: '9:15 AM',
      duration: '1 hr 45 min',
      totalSeats: 40,
      availableSeats: 3,
    ),
    BusType(
      name: 'Pushpak Airport Bus',
      type: 'Airport',
      rating: 4.7,
      stops: 'Airport Routes',
      fare: 'Premium Fare',
      description: 'Premium airport shuttle with direct routes and luggage space',
      imageUrl: 'https://images.unsplash.com/photo-1527786356703-4b100091cd2c?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF7B68EE),
      fareCategory: 'Purple',
      schedules: [
        BusStop(name: 'City Center', time: '5:00 AM'),
        BusStop(name: 'Railway Station', time: '5:30 AM'),
        BusStop(name: 'Airport Terminal', time: '6:30 AM'),
      ],
      boardingTime: '5:00 AM',
      arrivalTime: '6:30 AM',
      duration: '1 hr 30 min',
      totalSeats: 32,
      availableSeats: 2,
    ),
    BusType(
      name: 'E-City Ordinary',
      type: 'Ordinary',
      rating: 4.2,
      stops: 'All Stops',
      fare: 'Lowest Fare',
      description: 'Eco-friendly ordinary bus serving all city stops',
      imageUrl: 'https://images.unsplash.com/photo-1531385944211-03e60074e0ca?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF9CCC65),
      fareCategory: 'Light Green',
      schedules: [
        BusStop(name: 'City Center', time: '5:30 AM'),
        BusStop(name: 'Market Area', time: '6:15 AM'),
        BusStop(name: 'Residential Zone', time: '7:00 AM'),
      ],
      boardingTime: '5:30 AM',
      arrivalTime: '7:00 AM',
      duration: '1 hr 30 min',
      totalSeats: 48,
      availableSeats: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightGray,
      appBar: AppBar(
        backgroundColor: AppTheme.lightGray,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.darkGray),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Buses'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: AppTheme.darkGray),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search buses, types, routes...',
                          hintStyle: const TextStyle(color: AppTheme.mediumGray),
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.search, color: AppTheme.mediumGray),
                          contentPadding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Icon(Icons.tune, color: AppTheme.primaryTeal, size: 20),
                  ),
                ],
              ),
            ),
            // Category Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _buildCategoryChip('All', selectedCategory == 'All'),
                  const SizedBox(width: 8),
                  _buildCategoryChip('City', selectedCategory == 'City'),
                  const SizedBox(width: 8),
                  _buildCategoryChip('Express', selectedCategory == 'Express'),
                  const SizedBox(width: 8),
                  _buildCategoryChip('Deluxe', selectedCategory == 'Deluxe'),
                  const SizedBox(width: 8),
                  _buildCategoryChip('Electric', selectedCategory == 'Electric'),
                  const SizedBox(width: 8),
                  _buildCategoryChip('AC', selectedCategory == 'AC'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Bus Types Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bus Types',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: AppTheme.primaryTeal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Bus List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: buses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _buildBusCard(context, buses[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() => selectedCategory = label);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.primaryTeal : AppTheme.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppTheme.primaryTeal.withOpacity(0.3),
                blurRadius: 8,
              ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (label != 'All') ...[
              Icon(
                _getCategoryIcon(label),
                color: isSelected ? AppTheme.white : AppTheme.darkGray,
                size: 16,
              ),
              const SizedBox(width: 6),
            ],
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppTheme.white : AppTheme.darkGray,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'City':
        return Icons.domain;
      case 'Express':
        return Icons.electric_bolt;
      case 'Deluxe':
        return Icons.star;
      case 'Electric':
        return Icons.electric_car;
      case 'AC':
        return Icons.ac_unit;
      default:
        return Icons.directions_bus;
    }
  }

  Widget _buildBusCard(BuildContext context, BusType bus) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BusDetailScreen(bus: bus),
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFEEEEEE)),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Left Color Bar
            Container(
              width: 4,
              height: 120,
              decoration: BoxDecoration(
                color: bus.accentColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Bus Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                bus.imageUrl,
                width: 100,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 120,
                    color: bus.accentColor.withOpacity(0.1),
                    child: Icon(Icons.directions_bus, color: bus.accentColor, size: 40),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            // Bus Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          bus.name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.darkGray,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.bookmark_border, size: 20),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                      const SizedBox(width: 4),
                      Text(
                        bus.rating.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.darkGray,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        bus.stops,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppTheme.mediumGray,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    bus.fare,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppTheme.mediumGray,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: bus.accentColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      bus.fareCategory,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: bus.accentColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BusDetailScreen extends StatefulWidget {
  final BusType bus;

  const BusDetailScreen({Key? key, required this.bus}) : super(key: key);

  @override
  State<BusDetailScreen> createState() => _BusDetailScreenState();
}

class _BusDetailScreenState extends State<BusDetailScreen> {
  bool _isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightGray,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hero Image
                  Stack(
                    children: [
                      Hero(
                        tag: 'bus-${widget.bus.name}',
                        child: Container(
                          height: 280,
                          width: double.infinity,
                          color: widget.bus.accentColor.withOpacity(0.1),
                          child: Image.network(
                            widget.bus.imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Icon(
                                  Icons.directions_bus,
                                  color: widget.bus.accentColor,
                                  size: 80,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // Top Action Buttons
                      Positioned(
                        top: 16,
                        left: 16,
                        right: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: AppTheme.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: AppTheme.darkGray, size: 20),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: AppTheme.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      _isWishlisted ? Icons.favorite : Icons.favorite_border,
                                      color: _isWishlisted ? Colors.red : AppTheme.mediumGray,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      setState(() => _isWishlisted = !_isWishlisted);
                                    },
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: AppTheme.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.share, color: AppTheme.darkGray, size: 20),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Bus Info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.bus.name,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: AppTheme.darkGray,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    widget.bus.description,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: AppTheme.mediumGray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: widget.bus.accentColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    widget.bus.rating.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: widget.bus.accentColor,
                                    ),
                                  ),
                                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Journey Details
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Journey Details',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppTheme.darkGray,
                              ),
                        ),
                        const SizedBox(height: 16),
                        _buildJourneyRow('Boarding', widget.bus.boardingTime),
                        const SizedBox(height: 12),
                        _buildJourneyRow('Arrival', widget.bus.arrivalTime),
                        const SizedBox(height: 12),
                        _buildJourneyRow('Duration', widget.bus.duration),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Schedule
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Schedule',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppTheme.darkGray,
                              ),
                        ),
                        const SizedBox(height: 12),
                        ...widget.bus.schedules.map((stop) {
                          final isLast = widget.bus.schedules.last == stop;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: widget.bus.accentColor,
                                      ),
                                    ),
                                    if (!isLast)
                                      Container(
                                        width: 2,
                                        height: 40,
                                        color: widget.bus.accentColor.withOpacity(0.3),
                                      ),
                                  ],
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        stop.name,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppTheme.darkGray,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        stop.time,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: AppTheme.mediumGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Seat Info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1,
                      children: [
                        _buildInfoCard(
                          icon: Icons.event_seat,
                          label: 'Total Seats',
                          value: widget.bus.totalSeats.toString(),
                        ),
                        _buildInfoCard(
                          icon: Icons.check_circle,
                          label: 'Available',
                          value: widget.bus.availableSeats.toString(),
                        ),
                        _buildInfoCard(
                          icon: Icons.local_offer,
                          label: 'Fare Category',
                          value: widget.bus.fareCategory,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Action Buttons
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, -4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.confirmation_number, size: 18),
                        label: const Text('Book Now'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryTeal,
                          foregroundColor: AppTheme.white,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          setState(() => _isWishlisted = !_isWishlisted);
                        },
                        icon: Icon(
                          _isWishlisted ? Icons.bookmark : Icons.bookmark_border,
                          size: 18,
                        ),
                        label: const Text('Save'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppTheme.primaryTeal,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          side: const BorderSide(color: AppTheme.primaryTeal),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJourneyRow(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEEEEEE)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppTheme.mediumGray,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppTheme.darkGray,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEEEEEE)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: widget.bus.accentColor, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppTheme.mediumGray,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: AppTheme.darkGray,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

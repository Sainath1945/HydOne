import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:android_intent_plus/android_intent.dart';


class DarshanTime {
  final String name;
  final String time;
  final IconData icon;

  const DarshanTime({required this.name, required this.time, required this.icon});
}

class TempleItem {
  final String name;
  final String location;
  final String rating;
  final String reviews;
  final String timing;
  final String description;
  final String imageUrl;
  final Color accentColor;
  final List<DarshanTime> darshanTimes;
  final String entryFee;
  final String bestTimeToVisit;
  final String timeToVisit;
  final String dressCode;
  final String latitude;
  final String longitude;

  const TempleItem({
    required this.name,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.timing,
    required this.description,
    required this.imageUrl,
    required this.accentColor,
    required this.darshanTimes,
    required this.entryFee,
    required this.bestTimeToVisit,
    required this.timeToVisit,
    required this.dressCode,
    required this.latitude,
    required this.longitude,
  });
}

class TemplesScreen extends StatelessWidget {
  const TemplesScreen({Key? key}) : super(key: key);

  final List<TempleItem> temples = const [
    TempleItem(
      name: 'Sanghi Temple',
      location: 'Hyderabad, Telangana',
      rating: '4.8',
      reviews: '2.3k Reviews',
      timing: 'Open 6:00 AM - 8:00 PM',
      description:
          'A peaceful spiritual landmark known for its grand architecture, calm courtyards, and divine atmosphere. One of the most visited temples in the region.',
      imageUrl:
          'https://images.unsplash.com/photo-1548013146-72479768bada?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      darshanTimes: [
        DarshanTime(name: 'Morning Darshan', time: '6:00 AM - 12:00 PM', icon: Icons.wb_sunny),
        DarshanTime(name: 'Evening Darshan', time: '4:00 PM - 8:00 PM', icon: Icons.nightlight_round),
        DarshanTime(name: 'Nirmalyam', time: '12:30 PM - 1:30 PM', icon: Icons.dark_mode),
      ],
      entryFee: 'Free',
      bestTimeToVisit: 'Oct - Mar',
      timeToVisit: '1 - 2 Hours',
      dressCode: 'Traditional',
      latitude: '17.2669306273',
      longitude: '78.6755803570',
    ),
    TempleItem(
      name: 'Birla Mandir',
      location: 'Banjara Hills, Hyderabad',
      rating: '4.7',
      reviews: '2.1k Reviews',
      timing: 'Open 7:00 AM - 9:00 PM',
      description:
          'A beautifully carved marble temple offering serene views and a welcoming ambience for visitors. Located on a hilltop with panoramic city views.',
      imageUrl:
          'https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      darshanTimes: [
        DarshanTime(name: 'Morning Darshan', time: '7:00 AM - 1:00 PM', icon: Icons.wb_sunny),
        DarshanTime(name: 'Evening Darshan', time: '3:30 PM - 9:00 PM', icon: Icons.nightlight_round),
        DarshanTime(name: 'Nirmalyam', time: '1:00 PM - 2:00 PM', icon: Icons.dark_mode),
      ],
      entryFee: 'Free',
      bestTimeToVisit: 'Oct - Mar',
      timeToVisit: '2 - 3 Hours',
      dressCode: 'Traditional',
      latitude: '17.3950° N',
      longitude: '78.4750° E',
    ),
    TempleItem(
      name: 'Jagannath Temple',
      location: 'Secunderabad',
      rating: '4.6',
      reviews: '1.8k Reviews',
      timing: 'Open 5:30 AM - 7:30 PM',
      description:
          'A vibrant temple destination loved for its devotional energy and heritage-inspired design. Known for its intricate carvings and spiritual significance.',
      imageUrl:
          'https://images.unsplash.com/photo-1506126613408-eca07ce68773?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      darshanTimes: [
        DarshanTime(name: 'Morning Darshan', time: '5:30 AM - 12:00 PM', icon: Icons.wb_sunny),
        DarshanTime(name: 'Evening Darshan', time: '4:00 PM - 7:30 PM', icon: Icons.nightlight_round),
        DarshanTime(name: 'Nirmalyam', time: '12:30 PM - 1:30 PM', icon: Icons.dark_mode),
      ],
      entryFee: 'Free',
      bestTimeToVisit: 'Oct - Mar',
      timeToVisit: '1.5 - 2 Hours',
      dressCode: 'Traditional',
      latitude: '17.3650° N',
      longitude: '78.5050° E',
    ),
     TempleItem(
      name: 'Jagannath Temple',
      location: 'Secunderabad',
      rating: '4.6',
      reviews: '1.8k Reviews',
      timing: 'Open 5:30 AM - 7:30 PM',
      description:
          'A vibrant temple destination loved for its devotional energy and heritage-inspired design. Known for its intricate carvings and spiritual significance.',
      imageUrl:
          'https://images.unsplash.com/photo-1506126613408-eca07ce68773?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      darshanTimes: [
        DarshanTime(name: 'Morning Darshan', time: '5:30 AM - 12:00 PM', icon: Icons.wb_sunny),
        DarshanTime(name: 'Evening Darshan', time: '4:00 PM - 7:30 PM', icon: Icons.nightlight_round),
        DarshanTime(name: 'Nirmalyam', time: '12:30 PM - 1:30 PM', icon: Icons.dark_mode),
      ],
      entryFee: 'Free',
      bestTimeToVisit: 'Oct - Mar',
      timeToVisit: '1.5 - 2 Hours',
      dressCode: 'Traditional',
      latitude: '17.3650° N',
      longitude: '78.5050° E',
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
        title: const Text('Temples'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: AppTheme.darkGray),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Temples to Explore',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              ...temples.map((temple) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _buildTempleCard(context, temple),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTempleCard(BuildContext context, TempleItem temple) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TempleDetailScreen(temple: temple),
          ),
        );
      },
      borderRadius: BorderRadius.circular(18),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
        ),
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
             Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    color: temple.accentColor.withOpacity(0.15),
    borderRadius: BorderRadius.circular(14),
  ),
  clipBehavior: Clip.antiAlias,
  child: temple.imageUrl.trim().isNotEmpty
      ? Image.network(
          temple.imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.account_balance,
              color: temple.accentColor,
              size: 24,
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          },
        )
      : Icon(
          Icons.account_balance,
          color: temple.accentColor,
          size: 24,
        ),
),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    temple.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.darkGray,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${temple.rating} • ${temple.location}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.mediumGray,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 14, color: AppTheme.mediumGray),
          ],
        ),
      ),
    );
  }
}

class TempleDetailScreen extends StatefulWidget {
  final TempleItem temple;

  const TempleDetailScreen({Key? key, required this.temple}) : super(key: key);

  @override
  State<TempleDetailScreen> createState() => _TempleDetailScreenState();
}

class _TempleDetailScreenState extends State<TempleDetailScreen> {
  int _currentImageIndex = 0;
  bool _isWishlisted = false;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                  // Image Carousel
                  Stack(
                    children: [
                      Hero(
                        tag: 'temple-${widget.temple.name}',
                        child: Container(
                          height: 280,
                          width: double.infinity,
                          color: AppTheme.lightGray,
                          child: PageView.builder(
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() => _currentImageIndex = index);
                            },
                            itemBuilder: (context, index) {
                              return Image.network(
                                widget.temple.imageUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: AppTheme.lightGray,
                                    child: const Center(
                                      child: Icon(
                                        Icons.account_balance,
                                        color: AppTheme.primaryTeal,
                                        size: 80,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            itemCount: 10,
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
                      // Image Counter
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppTheme.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '${_currentImageIndex + 1}/10',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.darkGray,
                            ),
                          ),
                        ),
                      ),
                      // Page Indicators
                      Positioned(
                        bottom: 16,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => Container(
                                width: 8,
                                height: 8,
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == (_currentImageIndex % 5)
                                      ? AppTheme.primaryTeal
                                      : AppTheme.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Temple Info
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
                                    widget.temple.name,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: AppTheme.darkGray,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on, color: AppTheme.primaryTeal, size: 18),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          widget.temple.location,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: AppTheme.primaryTeal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppTheme.primaryTeal.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    widget.temple.rating,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: AppTheme.primaryTeal,
                                    ),
                                  ),
                                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 14),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.temple.reviews,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.mediumGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // About Temple
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Temple',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppTheme.darkGray,
                              ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.temple.description,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.8,
                            color: AppTheme.mediumGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Temple Timings
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.account_balance, color: AppTheme.primaryTeal, size: 24),
                            const SizedBox(width: 10),
                            Text(
                              'Temple Timings',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: AppTheme.darkGray,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        ...widget.temple.darshanTimes.map(
                          (darshan) => Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: Row(
                              children: [
                                Icon(darshan.icon, color: AppTheme.primaryTeal, size: 20),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Text(
                                    darshan.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppTheme.darkGray,
                                    ),
                                  ),
                                ),
                                Text(
                                  darshan.time,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryTeal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Info Grid
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.9,
                      children: [
                        _buildInfoCard(
                          icon: Icons.monetization_on,
                          label: 'Entry Fee',
                          value: widget.temple.entryFee,
                        ),
                        _buildInfoCard(
                          icon: Icons.people,
                          label: 'Best Time to Visit',
                          value: widget.temple.bestTimeToVisit,
                        ),
                        _buildInfoCard(
                          icon: Icons.schedule,
                          label: 'Time to Visit',
                          value: widget.temple.timeToVisit,
                        ),
                        _buildInfoCard(
                          icon: Icons.checkroom,
                          label: 'Dress Code',
                          value: widget.temple.dressCode,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Location
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on, color: AppTheme.primaryTeal, size: 24),
                            const SizedBox(width: 10),
                            Text(
                              'Location',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: AppTheme.darkGray,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppTheme.white,
                            border: Border.all(color: const Color(0xFFEEEEEE)),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  'https://api.mapbox.com/styles/v1/mapbox/light-v11/static/0,0,2,0,0/400x300@2x?access_token=pk.eyJ1IjoiZXhhbXBsZSIsImEiOiJjbGsxMjM0NTY3ODkwIn0',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: AppTheme.lightGray,
                                      child: const Center(
                                        child: Icon(Icons.map, color: AppTheme.primaryTeal, size: 48),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppTheme.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(Icons.my_location, color: AppTheme.primaryTeal, size: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFEEEEEE)),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Latitude',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.mediumGray,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      widget.temple.latitude,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppTheme.darkGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Longitude',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.mediumGray,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      widget.temple.longitude,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppTheme.darkGray,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                        onPressed: () {
                            _openMap(
        widget.temple.latitude,
        widget.temple.longitude,
      );
                        },
                        icon: const Icon(Icons.near_me, size: 18),
                        label: const Text('Navigate'),
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
          Icon(icon, color: AppTheme.primaryTeal, size: 24),
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
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: AppTheme.darkGray,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
   
Future<void> _openMap(String lat, String lng) async {
  final double latitude = double.parse(lat);
  final double longitude = double.parse(lng);

  final intent = AndroidIntent(
    action: 'action_view',
    data: 'geo:$latitude,$longitude?q=$latitude,$longitude',
    package: 'com.google.android.apps.maps',
  );

  await intent.launch();
}
}

class _InfoChip extends StatelessWidget {
  final String label;
  final Color color;

  const _InfoChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}

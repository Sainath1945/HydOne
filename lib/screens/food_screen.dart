import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class MenuItem {
  final String name;
  final String category;
  final String price;
  final String description;

  const MenuItem({
    required this.name,
    required this.category,
    required this.price,
    required this.description,
  });
}

class RestaurantItem {
  final String name;
  final String location;
  final String rating;
  final String reviews;
  final String cuisineType;
  final String deliveryTime;
  final String description;
  final String imageUrl;
  final Color accentColor;
  final List<MenuItem> menuItems;
  final String minOrder;
  final String deliveryFee;
  final String avgCost;
  final String openingTime;
  final String closingTime;
  final String latitude;
  final String longitude;

  const RestaurantItem({
    required this.name,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.cuisineType,
    required this.deliveryTime,
    required this.description,
    required this.imageUrl,
    required this.accentColor,
    required this.menuItems,
    required this.minOrder,
    required this.deliveryFee,
    required this.avgCost,
    required this.openingTime,
    required this.closingTime,
    required this.latitude,
    required this.longitude,
  });
}

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  final List<RestaurantItem> restaurants = const [
    RestaurantItem(
      name: 'Spice Garden',
      location: 'Banjara Hills, Hyderabad',
      rating: '4.6',
      reviews: '2.1k Reviews',
      cuisineType: 'North Indian • Mughlai',
      deliveryTime: '30 - 40 min',
      description:
          'A delightful culinary destination offering traditional North Indian and Mughlai cuisine with authentic flavors and impeccable service in a warm ambiance.',
      imageUrl:
          'https://images.unsplash.com/photo-1517521271924-fc3f6dd088d8?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      menuItems: [
        MenuItem(
          name: 'Butter Chicken',
          category: 'Main Course',
          price: '₹380',
          description: 'Tender chicken in creamy tomato sauce with aromatic spices',
        ),
        MenuItem(
          name: 'Biryani',
          category: 'Main Course',
          price: '₹320',
          description: 'Fragrant basmati rice cooked with marinated meat',
        ),
        MenuItem(
          name: 'Tandoori Naan',
          category: 'Bread',
          price: '₹60',
          description: 'Traditional Indian flatbread baked in a tandoor',
        ),
        MenuItem(
          name: 'Gulab Jamun',
          category: 'Dessert',
          price: '₹120',
          description: 'Soft milk solids soaked in sugar syrup',
        ),
      ],
      minOrder: '₹200',
      deliveryFee: '₹30',
      avgCost: '₹400-600 per person',
      openingTime: '11:00 AM',
      closingTime: '11:00 PM',
      latitude: '17.3850° N',
      longitude: '78.4867° E',
    ),
    RestaurantItem(
      name: 'Pizza Palace',
      location: 'Kondapur, Hyderabad',
      rating: '4.5',
      reviews: '1.8k Reviews',
      cuisineType: 'Italian • Fast Food',
      deliveryTime: '25 - 35 min',
      description:
          'Authentic Italian pizzas and pastas crafted with fresh ingredients and traditional recipes, delivering a true taste of Italy to your doorstep.',
      imageUrl:
          'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      menuItems: [
        MenuItem(
          name: 'Margherita Pizza',
          category: 'Pizza',
          price: '₹320',
          description: 'Classic pizza with mozzarella, basil, and tomato sauce',
        ),
        MenuItem(
          name: 'Pepperoni Pizza',
          category: 'Pizza',
          price: '₹350',
          description: 'Loaded with pepperoni slices and mozzarella cheese',
        ),
        MenuItem(
          name: 'Spaghetti Carbonara',
          category: 'Pasta',
          price: '₹280',
          description: 'Creamy pasta with bacon and parmesan cheese',
        ),
        MenuItem(
          name: 'Gelato',
          category: 'Dessert',
          price: '₹150',
          description: 'Italian ice cream in various flavors',
        ),
      ],
      minOrder: '₹200',
      deliveryFee: '₹25',
      avgCost: '₹350-500 per person',
      openingTime: '10:00 AM',
      closingTime: '10:30 PM',
      latitude: '17.4450° N',
      longitude: '78.6250° E',
    ),
    RestaurantItem(
      name: 'Chai & Bites',
      location: 'Jubilee Hills, Hyderabad',
      rating: '4.4',
      reviews: '1.5k Reviews',
      cuisineType: 'Cafe • Snacks',
      deliveryTime: '20 - 30 min',
      description:
          'A cozy cafe serving artisanal chai and delicious snacks, perfect for breakfast, lunch, or an afternoon break with friends.',
      imageUrl:
          'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=900&q=80',
      accentColor: Color(0xFF008080),
      menuItems: [
        MenuItem(
          name: 'Masala Chai',
          category: 'Beverages',
          price: '₹40',
          description: 'Traditional Indian spiced tea with milk',
        ),
        MenuItem(
          name: 'Samosa',
          category: 'Snacks',
          price: '₹35',
          description: 'Crispy pastry filled with spiced potatoes',
        ),
        MenuItem(
          name: 'Paneer Tikka',
          category: 'Starters',
          price: '₹250',
          description: 'Grilled cottage cheese cubes with spices',
        ),
        MenuItem(
          name: 'Brownie',
          category: 'Dessert',
          price: '₹120',
          description: 'Rich and fudgy chocolate brownie',
        ),
      ],
      minOrder: '₹150',
      deliveryFee: '₹20',
      avgCost: '₹250-350 per person',
      openingTime: '8:00 AM',
      closingTime: '9:00 PM',
      latitude: '17.4050° N',
      longitude: '78.4650° E',
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
        title: const Text('Food'),
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
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.primaryTeal.withOpacity(0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryTeal.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.restaurant,
                            color: AppTheme.primaryTeal,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delicious Food Near You',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Find restaurants, offers and top meals.',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Hero(
                      tag: 'food-featured',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          restaurants.first.imageUrl,
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 220,
                              color: AppTheme.lightGray,
                              child: const Center(
                                child: Icon(
                                  Icons.restaurant,
                                  color: AppTheme.primaryTeal,
                                  size: 60,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: const [
                        _InfoChip(label: 'Top Rated', color: AppTheme.primaryTeal),
                        _InfoChip(label: 'Fast Delivery', color: AppTheme.accentBlue),
                        _InfoChip(label: 'Special Offers', color: Color(0xFF8E24AA)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Recommended Restaurants',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              ...restaurants.map((restaurant) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _buildRestaurantCard(context, restaurant),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(BuildContext context, RestaurantItem restaurant) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantDetailScreen(restaurant: restaurant),
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
                color: restaurant.accentColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(Icons.restaurant, color: restaurant.accentColor, size: 24),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.darkGray,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${restaurant.rating} • ${restaurant.location}',
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

class RestaurantDetailScreen extends StatefulWidget {
  final RestaurantItem restaurant;

  const RestaurantDetailScreen({Key? key, required this.restaurant}) : super(key: key);

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
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
                        tag: 'restaurant-${widget.restaurant.name}',
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
                                widget.restaurant.imageUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: AppTheme.lightGray,
                                    child: const Center(
                                      child: Icon(
                                        Icons.restaurant,
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
                  // Restaurant Info
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
                                    widget.restaurant.name,
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
                                          widget.restaurant.location,
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
                                    widget.restaurant.rating,
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
                          widget.restaurant.reviews,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.mediumGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // About Restaurant
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Restaurant',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppTheme.darkGray,
                              ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.restaurant.description,
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
                  // Menu Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.restaurant_menu, color: AppTheme.primaryTeal, size: 24),
                            const SizedBox(width: 10),
                            Text(
                              'Menu',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: AppTheme.darkGray,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        ...widget.restaurant.menuItems.map(
                          (item) => Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppTheme.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: const Color(0xFFEEEEEE)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    margin: const EdgeInsets.only(top: 6),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: item.category.contains('Vegetarian')
                                          ? Color(0xFF4CAF50)
                                          : AppTheme.accentRed,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                item.name,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppTheme.darkGray,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              item.price,
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: AppTheme.primaryTeal,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          item.category,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: AppTheme.mediumGray,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          item.description,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.mediumGray,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
                          label: 'Avg Cost',
                          value: widget.restaurant.avgCost.split(' ')[0],
                        ),
                        _buildInfoCard(
                          icon: Icons.delivery_dining,
                          label: 'Min Order',
                          value: widget.restaurant.minOrder,
                        ),
                        _buildInfoCard(
                          icon: Icons.local_shipping,
                          label: 'Delivery Fee',
                          value: widget.restaurant.deliveryFee,
                        ),
                        _buildInfoCard(
                          icon: Icons.schedule,
                          label: 'Delivery Time',
                          value: widget.restaurant.deliveryTime.split(' ')[0],
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
                                      widget.restaurant.latitude,
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
                                      widget.restaurant.longitude,
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
                        onPressed: () {},
                        icon: const Icon(Icons.near_me, size: 18),
                        label: const Text('Order Now'),
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

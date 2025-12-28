import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Department list with icons and professional colors
    final departments = [
      {
        'title': 'Sales',
        'icon': Icons.receipt_long,
        'color': AppColors.primary, // Blue
      },
      {
        'title': 'Purchases',
        'icon': Icons.inventory_2,
        'color': AppColors.secondary, // Dark Blue
      },
      {
        'title': 'Products',
        'icon': Icons.category,
        'color': Colors.teal.shade600, // Teal
      },
      {
        'title': 'Customers',
        'icon': Icons.people,
        'color': Colors.orange.shade600, // Orange
      },
      {
        'title': 'Suppliers',
        'icon': Icons.factory,
        'color': Colors.purple.shade600, // Purple
      },
      {
        'title': 'Settings',
        'icon': Icons.settings,
        'color': Colors.grey.shade700, // Gray
      },
      {
        'title': 'Profile',
        'icon': Icons.person,
        'color': AppColors.secondary, // Dark Blue
      },
       {
        'title': 'Items',
        'icon': Icons.category_outlined,
        'color': const Color.fromARGB(255, 139, 141, 124), // Dark Blue
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 144, 154, 154),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: departments.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final dept = departments[index];
            return HomeCard(
              icon: dept['icon'] as IconData,
              title: dept['title'] as String,
              color: dept['color'] as Color,
              onTap: () {
                // Navigate to corresponding department screen
              },
            );
          },
        ),
      ),
    );
  }
}

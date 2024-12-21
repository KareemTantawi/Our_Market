import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/core/components/custom_search_field.dart';
import 'package:our_market/views/home/ui/widgets/custom_category_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomSearchWidget(),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/buy.jpg',
            width: double.infinity,
          ),
          SizedBox(height: 15),
          Text(
            'Popular Categories',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              itemCount: categories.length,
              // shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomCategoryWidget(
                  icon: categories[index].icon,
                  title: categories[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Category> categories = [
  Category(icon: Icons.sports, title: 'Sports'),
  Category(icon: Icons.tv, title: 'Electronics'),
  Category(icon: Icons.collections, title: 'Collections'),
  Category(icon: Icons.book, title: 'Books'),
  Category(icon: Icons.games, title: 'Games'),
  Category(icon: Icons.bike_scooter, title: 'Bikes'),
];

class Category {
  final IconData icon;
  final String title;

  Category({
    required this.icon,
    required this.title,
  });
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/core/components/custom_search_field.dart';
import 'package:our_market/views/home/ui/widgets/custom_button_widget.dart';
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
          SizedBox(
            height: 15,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://img.freepik.com/free-vector/simple-product-3d-background-vector-set_53876-156228.jpg?t=st=1734796521~exp=1734800121~hmac=5abe1958b732508560e129f31091dbfbbc475c0557e9ddf92a8e74bc5a99a2de&w=996',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: 65,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '50% OFF',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "223 LE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "150 LE",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  // fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          CustomButtonWidget(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
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

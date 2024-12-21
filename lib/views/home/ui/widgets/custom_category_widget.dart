import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.kPrimaryColor,
            radius: 30,
            child: Icon(icon, color: Colors.white, size: 34),
          ),
        ),
        // SizedBox(
        //   height: 4,
        // ),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}

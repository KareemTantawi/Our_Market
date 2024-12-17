import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Container(
            height: 55,
            width: 85,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}

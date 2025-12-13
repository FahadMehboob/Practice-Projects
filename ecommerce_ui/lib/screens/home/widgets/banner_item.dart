import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final String image;
  const BannerItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/$image'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoriesListItem extends StatelessWidget {
  const CategoriesListItem({super.key, required this.txt, required this.img});
  final String txt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 38),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 60
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(img),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              txt,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key, required this.title, this.txtColor = Colors.black, this.onTap});
  final String title;
  final Color txtColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: txtColor),
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: const Text(
            'See All',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ContinueWithButton extends StatelessWidget {
  const ContinueWithButton(
      {super.key, required this.txt, required this.img, this.onTap});
  final String txt;
  final String img;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: 14,
            ),
            Image.asset(
              img,
              width: 24,
              height: 24,
            ),
            const Spacer(),
            Text(
              'Continue With $txt',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 17,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
        Spacer(),
        Container(
          width: 73,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kSecondaryColor,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Men',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'assets/images/arrowdown.png',
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        CircleAvatar(
          radius: 20,
          backgroundColor: kPrimaryColor,
          child: Center(
            child: Image.asset('assets/images/bag.png'),
          ),
        ),
      ],
    );
  }
}

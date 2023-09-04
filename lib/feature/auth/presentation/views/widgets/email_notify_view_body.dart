import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailNotifyViewBody extends StatelessWidget {
  const EmailNotifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/message.png',
              height: 100,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'We Sent you an Email to reset your password.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              txt: 'Return to Login',
              width: 160,
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement('/${AppRouter.kLoginView}');
              },
            ),
          ],
        ),
      ),
    );
  }
}

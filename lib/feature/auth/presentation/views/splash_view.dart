import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  @override
  void initState() {
    super.initState();
    Navigate();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Text('Clot', style: TextStyle(
          fontSize: 64,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),),
      ),
    );
  }
  Future<void> Navigate() async {
    Future.delayed(const Duration(milliseconds: 4500), () {
     GoRouter.of(context).go('/${AppRouter.kEmailLoginView}');
    });
  }
  }


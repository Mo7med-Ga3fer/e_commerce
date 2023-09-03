import 'package:e_commerce/feature/auth/presentation/views/create_account_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/email_notify_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/forgot_password_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/login_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/on_boarding_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/splash_view.dart';
import 'package:e_commerce/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kLoginView = 'loginView';
  static const kPasswordLoginView = 'passwordLoginView';
  static const kRegisterView = 'registerView';
  static const kForgotPasswordView = 'forgotPasswordView';
  static const kEmailNotifyView = 'emailNotifyView';
  static const kOnBoardingView = 'onBoardingView';
  static const kHomeView = 'homeView';


  static  final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const SplashView(),
      routes: <RouteBase>[
        GoRoute(
          path: kLoginView,
          builder: (BuildContext context, GoRouterState state) => const LoginView(),
        ),
        GoRoute(
        path: kRegisterView,
        builder: (context, state) => const CreateAccountView(),
        ),
        GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
        ),
        GoRoute(
        path: kEmailNotifyView,
        builder: (context, state) => const EmailNotifyView(),
        ),
        GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView(),
        ),
      ],
    ),
  ],
);
}
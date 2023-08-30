import 'package:e_commerce/feature/auth/presentation/views/widgets/login_view_password_section_body.dart';
import 'package:flutter/material.dart';

class LoginViewPasswordSection extends StatelessWidget {
  const LoginViewPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LoginViewPasswordSectionBody()),
    );
  }
}
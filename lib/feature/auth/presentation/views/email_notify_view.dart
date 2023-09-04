import 'package:e_commerce/feature/auth/presentation/views/widgets/email_notify_view_body.dart';
import 'package:flutter/material.dart';

class EmailNotifyView extends StatelessWidget {
  const EmailNotifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EmailNotifyViewBody()),
    );
  }
}

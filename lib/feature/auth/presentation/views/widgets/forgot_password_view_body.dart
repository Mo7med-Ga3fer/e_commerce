import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  TextEditingController email = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      opacity: 0.08,
      color: kPrimaryColor,
      progressIndicator: const CircularProgressIndicator(color: kPrimaryColor,),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25,),
                const ArrowBackIcon(),
                const SizedBox(height: 20,),
                const Text('Forgot Password', style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),),
                const SizedBox(height: 35,),
                CustomTextFormField(
                  hintText: 'Enter Email address',
                  controller: email,
                ),
                const SizedBox(height: 16,),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onTap: ()async{
                      setState(() {
                      isLoading = true;
                    });
                      await Authentication.passwordReset(email.text);
                      setState(() {
                      isLoading = false;
                    });
                      GoRouter.of(context).pushReplacement('/${AppRouter.kEmailNotifyView}');
                    },
                  )),
              ],
            ),
          ),
          ),
      ),
    );
  }
}

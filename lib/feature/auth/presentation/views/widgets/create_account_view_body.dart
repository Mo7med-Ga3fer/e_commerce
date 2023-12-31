import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CreateAccountViewBody extends StatefulWidget {
  const CreateAccountViewBody({super.key});

  @override
  State<CreateAccountViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<CreateAccountViewBody> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      opacity: 0.08,
      color: kPrimaryColor,
      progressIndicator: const CircularProgressIndicator(
        color: kPrimaryColor,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const ArrowBackIcon(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextFormField(
                  hintText: 'Firstname',
                  controller: firstname,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: 'Lastname',
                  controller: lastname,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: 'Email Address',
                  controller: email,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  controller: password,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      onTap: () async {
                        setState(() {
                          isLoading = true;
                        });
                        await Authentication.createAccount(
                            email.text, password.text);
                        setState(() {
                          isLoading = true;
                        });
                        GoRouter.of(context)
                            .pushReplacement('/${AppRouter.kOnBoardingView}');
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

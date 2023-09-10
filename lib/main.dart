import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/feature/auth/presentation/views/login_view.dart';
import 'package:e_commerce/feature/home/data/repos/home_repo_impl.dart';
import 'package:e_commerce/feature/home/presentation/manager/all_products_cubit/get_all_products_cubit.dart';
import 'package:e_commerce/feature/home/presentation/views/category_result_view.dart';
import 'package:e_commerce/feature/home/presentation/views/home_view.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllProductsCubit(HomeRepoImpl())..getAllProducts(),
      child: MaterialApp.router(
        //home: LoginView(),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'GTWalsheimPro',
        ),
      ),
    );
  }
}

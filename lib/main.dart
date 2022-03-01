import 'package:flutter/material.dart';
import 'package:fluttershopping/pages/food/popular_food_detail.dart';
import 'package:fluttershopping/pages/food/recommended_food_detail.dart';
import 'package:fluttershopping/pages/home/main_food_page.dart';
import 'package:fluttershopping/pages/welcome/welcome_screen.dart';
import 'package:fluttershopping/utils/colors.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: AppColors.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("You have an error ${snapshot.error.toString()}");
              return Text("Something went wrong!");
            } else if (snapshot.hasData) {
              return WelcomeScreen();
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web/controllers/menu_controller.dart';
import 'package:flutter_web/controllers/navigation_controller.dart';
import 'package:flutter_web/layout.dart';
import 'package:flutter_web/pages/authentication/authentication.dart';
import 'package:flutter_web/routes/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      debugShowCheckedModeBanner: false,
      title: "Dash",
      getPages: [
        GetPage(name: rootRoute, page: ()=>SiteLayout()),
        GetPage(name: authenticationPageRoute, page: ()=>Authentication()),
      ],
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              GoogleFonts.mulishTextTheme().apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(

              builders: {

            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(

            ),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.windows:FadeUpwardsPageTransitionsBuilder(

                )
          },),
          primaryColor: Colors.blue),
      home: Authentication(),
    );
  }
}

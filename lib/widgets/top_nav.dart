import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/widgets/custom_text.dart';

import '../constant/style.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icon/logo.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
      title: Row(children: [
        Visibility(
            child: CustomText(
          text: "Dash",
          color: lightGrey,
          size: 20,
          weight: FontWeight.bold,
        )),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            )),
        Stack(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light,width: 2)),
                ))
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        SizedBox(
          width: 5,
        ),
        CustomText(
          text: "Ishwar Parihar",
          color: lightGrey,
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),

          ),
          child:Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ) ,
        ),


      ]),
      iconTheme: IconThemeData(
        color: dark,
      ),
      backgroundColor:Colors.transparent,
    );

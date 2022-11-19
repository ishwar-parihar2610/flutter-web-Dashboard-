import 'package:flutter/material.dart';
import 'package:flutter_web/constant/style.dart';
import 'package:flutter_web/layout.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_text.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
          child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Image.asset('assets/icon/logo.png'),
                ),
                Expanded(child: Container())
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                CustomText(
                  text: "Welcome back to the admin panel",
                  color: lightGrey,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "ishwar@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "123456",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(value: true, onChanged: (val) {}),
                CustomText(
                  text: "Remember me",
                ),
                Expanded(child: SizedBox()),
                CustomText(
                  text: "Forgot password",
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Get.offAll(() => SiteLayout());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: active
                ),
                alignment: Alignment.center,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CustomText(
                  text: "Login",
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: "Do not have admin credentials ?"),
              TextSpan(
                  text: "  Request credentials!", style: TextStyle(color: active)),
            ]))
          ],
        ),
      )),
    );
  }
}

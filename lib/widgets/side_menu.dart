import 'package:flutter/material.dart';
import 'package:flutter_web/constant/controllers.dart';
import 'package:flutter_web/constant/style.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/routes/routes.dart';
import 'package:flutter_web/widgets/custom_text.dart';
import 'package:flutter_web/widgets/side_meu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _width / 48,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icon/logo.png"),
                  ),
                  Flexible(
                      child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )),
                  SizedBox(
                    width: _width / 48,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              )
            ]),


          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItemRoutes
                  .map((itemName) => SideMenuItem(
                      itemName: itemName.name,
                      onTap: () {
                        if (itemName.route == authenticationPageRoute) {
                          /// go to authentication page
                        }
                        if (!menuController.isActive(itemName.name)) {
                          menuController.changeActiveItemTo(itemName.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(itemName.name);
                        }
                      }))
                  .toList())
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web/pages/drivers/widget/drivers_table.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constant/controllers.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/custom_text.dart';
class Drivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,

              ),
            )
          ],
        ),



        ),
        Expanded(child: ListView(children: const [
          DriversTable()
        ],))
      ],
    );
  }
}
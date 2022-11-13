import 'package:flutter/material.dart';
import 'package:flutter_web/constant/controllers.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/pages/overview/widget/available_drivers.dart';
import 'package:flutter_web/pages/overview/widget/overview_card_medium.dart';
import 'package:flutter_web/pages/overview/widget/overview_card_small.dart';
import 'package:flutter_web/pages/overview/widget/overview_cards_largest.dart';
import 'package:flutter_web/pages/overview/widget/revenue_section_large.dart';
import 'package:flutter_web/pages/overview/widget/revenue_section_small.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () =>
              Row(
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
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  OverViewCardMediumScreen()
                else
                  OverViewCardsLargeScreen()
              else
                OverViewCardSmall(),

              if(!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
              else
              RevenueSectionSmall(),
              AvaialbleDrivers()
            ],
          ),
        ),

      ],
    );
  }
}

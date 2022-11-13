import 'package:flutter/material.dart';
import 'package:flutter_web/constant/style.dart';
import 'package:flutter_web/pages/overview/widget/bar_chat.dart';
import 'package:flutter_web/pages/overview/widget/revenue_info.dart';
import 'package:flutter_web/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 1.0,
            )
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(width: 600, height: 200, child: SimpleBarChart())
              ],
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  RevenueInfo(
                    title: "Today\'s revenue",
                    amount: "₹ 12000",
                  ),
                  RevenueInfo(
                    title: "Last 7 days",
                    amount: "₹ 150",
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  RevenueInfo(
                    title: "Last 30 days",
                    amount: "₹ 12000",
                  ),
                  RevenueInfo(
                    title: "Last 12 month",
                    amount: "₹ 150",
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

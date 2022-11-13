import 'package:flutter/material.dart';
import 'package:flutter_web/pages/overview/widget/info_card_small.dart';

class OverViewCardSmall extends StatelessWidget {
  const OverViewCardSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            onTap: () {},
            title: "Rides in progress",
            value: "7",
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            onTap: () {},
            title: "Packages delivered",
            value: "17",
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            onTap: () {},
            title: "Cancelled delivered",
            value: "3",
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            onTap: () {},
            title: "Scheduled deliveries",
            value: "3",
          ),
          SizedBox(
            height: _width / 64,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web/constant/style.dart';

class InfoCard extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool isActive;
  final Function onTap;

  const InfoCard(
      {Key? key,
      required this.onTap,
      this.value,
      this.isActive=false,
      this.title,
      this.topColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap(),
      child: Container(
        height: 136,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 1.0,
              )
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: topColor ?? active,
                  height: 5,
                )),
              ],
            ),
            Expanded(child: Container()),
            RichText(text: TextSpan(
              children: [
                TextSpan(text: "$title \n ", style: TextStyle(
                  fontSize: 16,
                  color: isActive! ? active : lightGrey
                )),

                TextSpan(text: "$value", style: TextStyle(
                    fontSize: 40,
                    color: isActive! ? active : dark
                ))
              ]
            )),
            Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}

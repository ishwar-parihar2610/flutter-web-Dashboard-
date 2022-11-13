import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final Function onTap;

  const InfoCardSmall(
      {Key? key,
      this.title,
      this.value,
      this.topColor,
      this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: onTap(),
      child: Container(
        
      ),
    ));
  }
}

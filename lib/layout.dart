import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/large.dart';
import 'package:flutter_web/widgets/side_menu.dart';

import 'package:flutter_web/widgets/small_screen.dart';
import 'package:flutter_web/widgets/top_nav.dart';
import 'package:get/get.dart';

import 'helpers/responsiveness.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        key: scaffoldKey,
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}

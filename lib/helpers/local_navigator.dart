

import 'package:flutter/cupertino.dart';
import 'package:flutter_web/constant/controllers.dart';
import 'package:flutter_web/routes/route.dart';
import 'package:flutter_web/routes/routes.dart';

Navigator localNavigator()=>Navigator(

  key:navigationController.navigatorKey,
  initialRoute: overviewPageRoute,
  onGenerateRoute: generateRoute,
);
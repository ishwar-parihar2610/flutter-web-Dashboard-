import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/pages/authentication/authentication.dart';
import 'package:flutter_web/pages/client/clients.dart';
import 'package:flutter_web/pages/drivers/drivers.dart';
import 'package:flutter_web/pages/overview/overview.dart';
import 'package:flutter_web/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print("on generate ${settings.name}");
  switch (settings.name) {
    case overviewPageDisplayName:
      return _getPageRoute(OverViewPage());
    case driversPageDisplayName:
      return _getPageRoute(Drivers());
    case clientsPageDisplayName:
      return _getPageRoute(Clients());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (_) => child);
}

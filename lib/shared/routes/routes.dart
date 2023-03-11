import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/routes/players/routes.dart';
import 'package:statboard_flutter_app/shared/routes/user/routes.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    ...UserRoutes.routes,
    ...PlayersRoutes.routes,
  };
}

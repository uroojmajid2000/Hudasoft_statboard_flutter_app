import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:statboard_flutter_app/shared/app.dart';

import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

// void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final storage = await HydratedStorage.build(
  //   storageDirectory: await getApplicationDocumentsDirectory(),
  // );

  // HydratedBlocOverrides.runZoned(
    // () => runApp(const MyApp());
  //   storage: storage,
  // );
// }

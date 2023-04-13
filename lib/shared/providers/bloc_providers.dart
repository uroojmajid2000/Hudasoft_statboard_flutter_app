
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statboard_flutter_app/shared/providers/user/bloc_providers.dart';

class BlocProviders {
  static List<BlocProvider> providers = [
    ...UserBlocProviders.providers,
  ];
}

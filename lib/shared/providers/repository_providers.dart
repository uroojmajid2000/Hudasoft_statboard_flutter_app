
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statboard_flutter_app/shared/providers/user/repository_providers.dart';

class RepositoryProviders {
  static List<RepositoryProvider> providers = [
    ...UserRepositoryProviders.providers,

  ];
}

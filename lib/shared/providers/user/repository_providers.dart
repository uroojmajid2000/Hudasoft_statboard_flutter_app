
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statboard_flutter_app/features/user/data/datasource/user_remote_datasource.dart';
import 'package:statboard_flutter_app/features/user/data/mapper/user_mapper.dart';
import 'package:statboard_flutter_app/features/user/domain/repository/user_repository_impl.dart';
import 'package:statboard_flutter_app/features/user/domain/usecase/login_usecase.dart';
class UserRepositoryProviders {
  static List<RepositoryProvider> providers = [
    // Login
    RepositoryProvider<LoginUseCase>(
      create: (context) => LoginUseCase(
        repository: UserRepositoryImpl(
            userMapper: UserMapper(),
            userRemoteDataSource: UserRemoteDataSource()),
      ),
    ),
   
  ];
}


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statboard_flutter_app/features/user/domain/usecase/login_usecase.dart';
import 'package:statboard_flutter_app/features/user/presentation/cubits/user/user_cubit.dart';

class UserBlocProviders {
  static List<BlocProvider> providers = [
    // Login
    BlocProvider<UserCubit>(
      create: (context) => UserCubit(
        loginUseCase: context.read<LoginUseCase>(),
      ),
    ),
  
  ];
}

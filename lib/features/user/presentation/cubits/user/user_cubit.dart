import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';
import 'package:statboard_flutter_app/features/user/domain/usecase/login_usecase.dart';
import 'package:statboard_flutter_app/shared/error/failures.dart';
import 'package:statboard_flutter_app/shared/params/user_params.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with HydratedMixin {
  final LoginUseCase loginUseCase;

  UserCubit({
    required this.loginUseCase,
  }) : super(UserState.initial());

  Future<void> login(String empId, String pass) async {
    emit(state.copyWith(status: UserStatus.loading));
    SharedPreferences preferences = await SharedPreferences.getInstance();

    Either<Failure, User> user =
        await loginUseCase.call(UserParams(empId: empId, pass:pass));

    user.fold(
      (Failure failure) {
        emit(state.copyWith(
          status: UserStatus.error,
        ));
      },
      (User user) async {
        emit(state.copyWith(
          status: UserStatus.loaded,
          user: user,
          isOtpVerified: false,
        ));
        await preferences.setString(
          "token",
          user.token,
        );
      },
    );
  }

  void logout() {
    emit(state.copyWith(
      status: UserStatus.initial,
      user: User.initial(),
      isOtpVerified: false,
    ));
  }

  bool isLoggedIn() {
    return state.isOtpVerified;
  }

  void verifyOtp() {
    emit(state.copyWith(isOtpVerified: true));
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.toMap();
  }
}

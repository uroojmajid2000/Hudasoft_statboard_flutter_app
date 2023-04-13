import 'package:dartz/dartz.dart';
import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';
import 'package:statboard_flutter_app/features/user/domain/repository/user_repository_impl.dart';
import 'package:statboard_flutter_app/shared/error/failures.dart';
import 'package:statboard_flutter_app/shared/params/user_params.dart';
import 'package:statboard_flutter_app/shared/usecase/usecase.dart';

class LoginUseCase extends UseCase<User, UserParams> {
  final UserRepositoryImpl repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, User>> call(UserParams params) {
    return repository.login(empId: params.empId, pass:  params.pass);
  }
}

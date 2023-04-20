import 'package:dartz/dartz.dart';
import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';
import 'package:statboard_flutter_app/shared/error/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  });
}

import 'package:dartz/dartz.dart';

import 'package:statboard_flutter_app/features/user/data/datasource/user_remote_datasource.dart';
import 'package:statboard_flutter_app/features/user/data/mapper/user_mapper.dart';
import 'package:statboard_flutter_app/features/user/data/model/user_model.dart';
import 'package:statboard_flutter_app/features/user/data/repository/user_repository.dart';
import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';
import 'package:statboard_flutter_app/shared/error/failures.dart';

class UserRepositoryImpl extends UserRepository {
  late UserRemoteDataSource _remoteDataSource;
  late UserMapper _mapper;

  UserRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
    required UserMapper userMapper,
  }) {
    _remoteDataSource = userRemoteDataSource;
    _mapper = userMapper;
  }

  @override
  Future<Either<Failure, User>> login({
    required String empId,
    required String pass,
  }) async {
    try {
      UserModel userModel = await _remoteDataSource.login(empId,
       pass
       );

      User result = _mapper.mapModeltoEntity(userModel);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

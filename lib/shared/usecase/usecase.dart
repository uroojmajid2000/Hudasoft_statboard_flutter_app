import 'package:dartz/dartz.dart';
import 'package:statboard_flutter_app/shared/error/failures.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

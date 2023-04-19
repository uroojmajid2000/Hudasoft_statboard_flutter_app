import 'package:statboard_flutter_app/features/user/data/model/login_model.dart';
import 'package:statboard_flutter_app/features/user/data/repository/login_repository.dart';

class LoginUseCase {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  Future<Login> login(String email, String password) {
    return _repository.login(email, password);
  }
}

import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';
import 'package:statboard_flutter_app/shared/mapper/mapper.dart';
import 'package:statboard_flutter_app/features/user/data/model/user_model.dart';

class UserMapper extends Mapper<User, UserModel> {
  @override
  User mapModeltoEntity(UserModel model) {
    User user = User(
      email: model.email,
      password: model.password,
    );
    return user;
  }
}

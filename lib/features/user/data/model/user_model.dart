import 'package:statboard_flutter_app/features/user/domain/entity/user_entity.dart';

class UserModel extends User {
 
 
 UserModel({
        required this.email,
        required this.password,
    }): super(
          email: email,
          password: password,
        
        );

 
    String email;
    String password;

  factory UserModel.fromJson(Map<String, dynamic> json) 
   {
    return UserModel(
     email: json["email"],
        password: json["password"],
    );
  }
 

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}

import 'package:platform_device_id/platform_device_id.dart';
import 'package:statboard_flutter_app/features/user/data/model/user_model.dart';
import 'package:statboard_flutter_app/shared/network/network.dart';

class UserRemoteDataSource {
  Future<UserModel> login(String email, String password) async {
    String? deviceId = await PlatformDeviceId.getDeviceId;

    Map<String, dynamic> data = {
      "email": email,
      "password": password,
      // "application_tag": "BLX-ERP-MOB",
      "device_id": deviceId.toString(),
    };

    try {
      var res = await NetworkHelper.request(
        method: 'POST',
        url: 'User/Login',
        data: data,
      );

      UserModel user = UserModel.fromJson(res);
      print(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:provider_fundamental/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  getUser() async {
    final user = UserModel(
        name: 'Rifqi',
        email: 'rifqi@gmail.com',
        phoneNumber: '081234567890',
        token: 'qwertyuiop123');

    await saveToken(user.token!);

    return user;
  }

  saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getString('token');
    // prefs.remove('token');
    return result;
  }
}

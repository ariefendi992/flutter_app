import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_airplane_v2/models/user_model.dart';
import 'package:flutter_airplane_v2/services/user_service.dart';

class AuthService {
  final FirebaseAuth _user = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _user
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        password: password,
        hobby: hobby,
        balance: 280000000,
      );

      await UserService().setUser(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}

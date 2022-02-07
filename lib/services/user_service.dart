import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_airplane_v2/models/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'name': user.name,
        'email': user.email,
        'password': user.password,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }
}

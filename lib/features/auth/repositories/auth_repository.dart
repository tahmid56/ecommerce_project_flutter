import 'package:ecommerce_project/constants/urls.dart';
import 'package:ecommerce_project/core/base_client.dart';
import 'package:ecommerce_project/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateProvider((ref) => AuthRepository());

class AuthRepository extends StateNotifier<User?> {
  AuthRepository() : super(User());
  var networkService = Provider((ref) => ref.read(networkServiceProvider));

  Future<void> loginUser(String email, String pass) async {
    var response = networkService.select((value) =>
        value.post(UrlConstants.loginUrl, {email: email, pass: pass}));
    print(response);
  }
}

import 'package:flutter/material.dart';
import 'package:promilo_project/controller/services/auth_service.dart';
import 'package:promilo_project/model/auth_model.dart';
import 'package:promilo_project/utils/snackbar_utils.dart';
import 'package:promilo_project/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth{
  @override
  bool build(){
    return true;
  }
  Future<void>loginWithEmailAndPassword( String email, String password, BuildContext context)async{
     state = true;
    try {
      final token =
          await AuthService.login(AuthModel(email: email, password: password));
      state = false;
      if (token!.token != '') {
        Future.sync(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePAge(),)));
        Future.sync(
          () => showSnackBar(context, 'Successfully logged in', false),
        );
      }
    } catch (e) {
      state = false;
      Future.sync(
        () => showSnackBar(context, 'An error occured', true),
      );
    }
  }
  }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screen/screen.dart';
import '../services/service.dart';
import '../utils/utils.dart';
import 'controller.dart';

class LoginController extends BaseController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final loginFormKey = GlobalKey<FormState>();
  RxBool isObscure = true.obs;


  void loginWithValidation() {
    if (loginFormKey.currentState!.validate()) {
      loader.value = true;
      const CircularProgressIndicator();
      login(emailController.value.text, passwordController.value.text);
    } else {
      loader.value = false;
    }
  }

  void login(username, password) async {
    loader.value = true;
      var response = await RemoteServices.login(username, password);
      try{
        if (response.statusCode == 200) {
          var jsonData = json.decode(response.body);
          sharedPreferencesHelper.storePrefData("Login", json.encode(jsonData));
          sharedPreferencesHelper.storeBoolPrefData("isLogin", true);
          Common.errorSnackBar('Success', 'Login Successfully');
          Get.offNamed(HomeScreen.pageId);
          loader.value = false;
        } else {
          loader.value = false;
          Common.errorSnackBar('Invalid credentials', 'Invalid Username Or Password');
        }
      }
      catch (e) {
      print("Error ${e.toString()}");
        loader.value = false;
      }
  }
}

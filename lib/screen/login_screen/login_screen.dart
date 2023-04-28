import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controller/controller.dart';
import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class LoginScreen extends GetView<LoginController> {
  static const pageId = '/loginScreen';

  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> CommonLoader(
        isLoad: controller.loader.value,
        body: Scaffold(
          backgroundColor: ColorConfig.colorLightGrey,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Sell on Papona",
                    style: CustomTextStyle.headingText,
                  ),
                  const SizedBox(height: 40,),
                  Form(
                    key: controller.loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Login to your Seller Account",
                          style: CustomTextStyle.headingText,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonTextField(
                          controller: controller.emailController,
                          validator: Validator.isEmail,
                          hintText: 'enter your email Address',
                          borderRadius: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonTextField(
                          controller: controller.passwordController,
                          isObscure: controller.isObscure.value,
                          validator: Validator.isPassword,
                          hintText: 'enter your password',
                          borderRadius: 20,
                          suffixIcon: IconButton(
                              icon: Icon(controller.isObscure.value
                                  ? Icons.visibility_off
                                  : Icons.visibility, color: controller.isObscure.value?Colors.black26:Colors.blue),
                              onPressed: () {
                                controller.isObscure.value =
                                !controller.isObscure.value;
                              }),
                        ),

                        const SizedBox(height: 1),
                        TextButton(
                          onPressed: () {
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Forgot Password?",
                              style: CustomTextStyle.fogotText,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CommonButton(
                          onPressed: (){
                            controller.loginWithValidation();
                          },
                          color: ColorConfig.colorRed,
                          height: 40,
                          width: Get.width,
                          child:  Text("Login", style: CustomTextStyle.buttonText,),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Don't have a Shop?",
                          style: CustomTextStyle.accountText,
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


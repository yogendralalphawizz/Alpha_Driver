import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/Screens/SinginScreens/Verification/VerifyByEmail/verify_by_email.dart';
import 'package:work/Screens/SinginScreens/controller/signInController.dart';

import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';
import '../../HomeScreen/home_screen.dart';
import '../../RegistrationScreens/get_steps.dart';
import '../../RegistrationScreens/regristration_screen.dart';

signIinWithEmail(emailController, passwordController, screenHeight, th, index,
    context, LoginController controller) {
  return Column(
    children: [
      SizedBox(
        height: 70,
        child: Center(
          child: CustomTextField(
            controller: emailController,
            labelText: 'Email',
            hintText: 'example@gmail.com',
            // prefixIcon: Icons.person,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            onTap: () {}, inputFormatters: [],
          ),
        ),
      ),
      SizedBox(
        height: 70,
        child: Center(
          child: CustomTextField(
            controller: passwordController,
            labelText: 'Password',
            hintText: '*********',
            // prefixIcon: Icons.person,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            textInputAction: TextInputAction.done,
            onTap: () {}, inputFormatters: [],
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      GestureDetector(
        onTap: () {
          controller.loginMail();
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => FormPage()));
        },
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: appPrimaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorWhite,
                  )),
              const SizedBox(
                width: 5,
              ),
              Icon(
                CupertinoIcons.arrow_right,
                color: appColorWhite,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      // Container(
      //   width: double.infinity,
      //   alignment: Alignment.centerRight,
      //   child: Column(
      //     children: [
      //       GestureDetector(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => VerifyByEmail()));
      //         },
      //         child: Text('Forgot Password?',
      //             style: th.bodyMedium?.copyWith(
      //               fontWeight: FontWeight.w700,
      //               color: appColorBlack,
      //             )),
      //       ),
      //       Container(
      //         width: 116,
      //         height: 1,
      //         color: appColorBlack,
      //       )
      //     ],
      //   ),
      // ),

      SizedBox(
        height: index == 1 ? screenHeight * 0.21 : screenHeight * 0.13,
      ),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?',
                style: th.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: appColorBlack,
                )),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Get.to(const SignupScreen());
              },
              child: Column(
                children: [
                  Text('Sign Up',
                      style: th.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: appPrimaryColor,
                      )),
                  Container(
                    width: 50,
                    height: 1,
                    color: appPrimaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}

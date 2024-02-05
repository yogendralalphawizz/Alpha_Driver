import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final SignupController signUpContr = Get.put(SignupController());

  bool _checkValue = false;
  @override
  void dispose() {
    signUpContr.numberController.dispose();
    super.dispose();
  }

  void _increment() {
    signUpContr.increaseCurrentState();
  }

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: ListView(
        children: [
          Container(
            child: Text(
              'Create your Account',
              style: th.bodyLarge?.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: appColorBlack),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: th.bodySmall
                ?.copyWith(fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          CustomTextField(
            controller: signUpContr.numberController,
            labelText: 'Mobile Number',
            hintText: '+91 966666666',
            keyboardType: TextInputType.phone,
            inputFormatters: [LengthLimitingTextInputFormatter(10)],
          ),
          const SizedBox(height: 20),
          CustomButtonWidget(
              text: 'VERIFY',
              onPressed: () {
                signUpContr.sendRegisterOTP();
              }),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _checkValue,
                onChanged: (bool? value) {
                  setState(() {
                    _checkValue = !_checkValue;
                  });
                },
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By clicking, you agree to our \n',
                      style: th.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: th.bodySmall?.copyWith(
                          decorationColor: appPrimaryColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                          color: appPrimaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle tap on 'Terms of Service'
                          print('Tapped on Terms of Service');
                        },
                    ),
                    TextSpan(
                      text: ' and ',
                      style: th.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: th.bodySmall?.copyWith(
                          decorationColor: appPrimaryColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                          color: appPrimaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Tapped on Privacy Policy');
                        },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

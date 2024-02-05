import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final SignupController signUpContr = Get.put(SignupController());

  bool _isVisible = false;
  bool _isVisible1 = false;
  IconData _icon = Icons.visibility_off;
  IconData _icon1 = Icons.visibility_off;
  bool _checkValue = false;
  @override
  void dispose() {
    signUpContr.passwordController.dispose();
    signUpContr.confirmPasswordController.dispose();
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
              'Enter new password ',
              style: th.bodyLarge?.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: appColorBlack),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: th.bodySmall
                ?.copyWith(fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          CustomTextField(
            obscureText: !_isVisible,
            suffixIcon: _icon,
            controller: signUpContr.passwordController,
            // prefixIcon: Icons.lock_outline,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            hintText: '',
            onIconTap: () {
              setState(() {
                _isVisible = !_isVisible;
                _icon = _isVisible ? Icons.visibility : Icons.visibility_off;
              });
            },
            labelText: 'Create New password', inputFormatters: [],
          ),
          SizedBox(height: 20),
          CustomTextField(
            obscureText: !_isVisible1,
            suffixIcon: _icon1,
            controller: signUpContr.confirmPasswordController,
            // prefixIcon: d.lock_outline,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            labelText: 'Confirm Password',
            onIconTap: () {
              setState(() {
                _isVisible1 = !_isVisible1;
                _icon1 = _isVisible1 ? Icons.visibility : Icons.visibility_off;
              });
            },
            hintText: '', inputFormatters: [],
          ),
          SizedBox(height: 30),
          CustomButtonWidget(
              text: 'CREATE PASSWORD',
              onPressed: () {
                signUpContr.verifyPassword();
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

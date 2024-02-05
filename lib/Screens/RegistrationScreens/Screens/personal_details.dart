import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';
import '../../HomeScreen/home_screen.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  void dispose() {
    signUpContr.nameController.dispose();
    signUpContr.emailController.dispose();
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
      child: ListView(children: [
        Text(
          'Enter your detail',
          style: th.bodyLarge?.copyWith(
              fontSize: 26, fontWeight: FontWeight.w700, color: appColorBlack),
        ),
        const SizedBox(height: 5),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          style: th.bodySmall
              ?.copyWith(fontWeight: FontWeight.w700, color: Colors.grey),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        CustomTextField(
          controller: signUpContr.personalNameController,
          labelText: 'Full Name',
          keyboardType: TextInputType.name,
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.emailController,
          keyboardType: TextInputType.emailAddress,
          labelText: 'Personal Email ID',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomButtonWidget(
            text: 'CONTINUE',
            onPressed: () {
              signUpContr.verifyPersonalDetails();
            }),
      ]),
    );
  }
}

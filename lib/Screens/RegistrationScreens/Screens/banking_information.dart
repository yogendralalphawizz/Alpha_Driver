import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/helper/CustomWidgets/custom_button.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';

class BankingInformation extends StatefulWidget {
  const BankingInformation({super.key});

  @override
  State<BankingInformation> createState() => _BankingInformationState();
}

class _BankingInformationState extends State<BankingInformation> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  void dispose() {
    signUpContr.bankAddressController.dispose();
    signUpContr.bankNameController.dispose();
    signUpContr.branchController.dispose();
    signUpContr.micrCodeController.dispose();
    signUpContr.ifscCodeController.dispose();
    signUpContr.accountNumberController.dispose();
    signUpContr.accountTypeController.dispose();
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
          'Enter your Account information',
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
          controller: signUpContr.bankNameController,
          labelText: 'Bank Name',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.branchController,
          labelText: 'Bank Branch',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.accountTypeController,
          labelText: 'Account Type',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.micrCodeController,
          labelText: 'MIRC Code',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.bankAddressController,
          keyboardType: TextInputType.text,
          labelText: 'Bank Address',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.accountNumberController,
          keyboardType: TextInputType.number,
          labelText: 'Account Number',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.ifscCodeController,
          keyboardType: TextInputType.datetime,
          labelText: 'IFSC Code Number',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 30),
        CustomButtonWidget(
            text: 'CONTINUE',
            onPressed: () {
              signUpContr.verifyBank();
            }),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/CustomWidgets/upload_doc_widget.dart';
import '../../../helper/app_constant.dart';

class DrivingLicence extends StatefulWidget {
  const DrivingLicence({super.key});

  @override
  State<DrivingLicence> createState() => _DrivingLicenceState();
}

class _DrivingLicenceState extends State<DrivingLicence> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  void dispose() {
    signUpContr.nameController.dispose();
    signUpContr.driverLicenceController.dispose();
    signUpContr.dateOfIssueController.dispose();
    signUpContr.expiryDateController.dispose();
    signUpContr.stateOrCountryDateController.dispose();
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
          controller: signUpContr.nameController,
          labelText: 'Full Name',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.driverLicenceController,
          labelText: 'Driver\' Licence Number',
          hintText: '',
          TextCapitalization: TextCapitalization.characters,
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.dateOfIssueController,
          keyboardType: TextInputType.datetime,
          labelText: 'Date of Issue',
          hintText: '2023-10-12',
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.expiryDateController,
          keyboardType: TextInputType.datetime,
          labelText: 'Expiry Date',
          hintText: '2023-10-12',
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.stateOrCountryDateController,
          keyboardType: TextInputType.name,
          labelText: 'State of Issuance',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        const FileUploadWidget(
          text: 'Upload License',
        ),
        const SizedBox(height: 30),
        CustomButtonWidget(
            text: 'CONTINUE',
            onPressed: () {
              signUpContr.verifyLicence();
            }),
      ]),
    );
  }
}

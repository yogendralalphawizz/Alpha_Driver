import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:work/helper/CustomWidgets/upload_doc_vehicle.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/CustomWidgets/upload_doc_widget.dart';
import '../../../helper/app_constant.dart';

class VehicleDetail extends StatefulWidget {
  const VehicleDetail({super.key});

  @override
  State<VehicleDetail> createState() => _VehicleDetailState();
}

class _VehicleDetailState extends State<VehicleDetail> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  void dispose() {
    signUpContr.typeController.dispose();
    signUpContr.vehicleNumberController.dispose();
    signUpContr.dateOfIssueController.dispose();
    signUpContr.expiryDateController.dispose();
    signUpContr.policyNumberController.dispose();
    signUpContr.coverageNumberController.dispose();
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
          'Enter your vehicle detail',
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
          controller: signUpContr.typeController,
          labelText: 'Vehicle Type',
          hintText: '',
          TextCapitalization: TextCapitalization.characters,
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.vehicleNumberController,
          labelText: 'Vehicle Registration number',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.dateOfIssueVehileController,
          keyboardType: TextInputType.datetime,
          labelText: 'Issue Date Vehicle',
          hintText: '',
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.expiryDateVehileController,
          keyboardType: TextInputType.datetime,
          labelText: 'Expiry Date Vehicle',
          hintText: '',
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.policyNumberController,
          keyboardType: TextInputType.name,
          labelText: 'Policy number',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.coverageNumberController,
          keyboardType: TextInputType.datetime,
          labelText: 'Coverage date',
          hintText: '',
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
        ),
        const SizedBox(height: 20),
        const FileUploadVehicleWidget(
          text: 'Vehicle Photo',
        ),
        const SizedBox(height: 30),
        CustomButtonWidget(
            text: 'CONTINUE',
            onPressed: () {
              signUpContr.verifyVehicle();
              //  _increment();
            }),
      ]),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

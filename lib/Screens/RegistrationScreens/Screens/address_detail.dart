import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../Provider/signupController.dart';
import '../../../helper/CustomWidgets/custom_button.dart';
import '../../../helper/CustomWidgets/custom_text_field.dart';
import '../../../helper/app_constant.dart';

class AddressDetail extends StatefulWidget {
  const AddressDetail({super.key});

  @override
  State<AddressDetail> createState() => _AddressDetailState();
}

class _AddressDetailState extends State<AddressDetail> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  void dispose() {
    signUpContr.permanentAddressController.dispose();
    signUpContr.cityController.dispose();
    signUpContr.stateController.dispose();
    signUpContr.zipCodeController.dispose();
    signUpContr.countryController.dispose();
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
          'Enter your address information',
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
          controller: signUpContr.permanentAddressController,
          labelText: 'Permanent Address',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.cityController,
          labelText: 'City',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.stateController,
          labelText: 'State/Province',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.zipCodeController,
          keyboardType: TextInputType.number,
          labelText: 'Postal/ZIP Code',
          hintText: '',
          inputFormatters: [LengthLimitingTextInputFormatter(6)],
        ),
        const SizedBox(height: 20),
        CustomTextField(
          controller: signUpContr.countryController,
          labelText: 'Country',
          hintText: '',
          inputFormatters: [],
        ),
        const SizedBox(height: 30),
        CustomButtonWidget(
            text: 'CONTINUE',
            onPressed: () {
              signUpContr.verifyAddress();
              // _increment();
            }),
      ]),
    );
  }
}

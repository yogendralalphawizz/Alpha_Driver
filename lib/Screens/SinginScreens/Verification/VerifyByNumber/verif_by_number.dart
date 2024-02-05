import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Screens/SinginScreens/Verification/VerifyByNumber/otp_verify_by_number.dart';
import 'package:work/helper/CustomWidgets/custom_button.dart';
import 'package:work/helper/CustomWidgets/custom_text_field.dart';

import '../../../../helper/app_constant.dart';

class VerifyByNumber extends StatefulWidget {
  const VerifyByNumber({super.key});

  @override
  State<VerifyByNumber> createState() => _VerifyByNumberState();
}

class _VerifyByNumberState extends State<VerifyByNumber> {
  TextEditingController numberController = TextEditingController();
  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Verify Number',
            style: th.bodyLarge
                ?.copyWith(fontWeight: FontWeight.w700, color: appColorBlack),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            const Align(
                alignment: Alignment.centerLeft, child: Icon(Icons.image)),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Enter your mobile \nnumber',
                style: th.bodyLarge?.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: appColorBlack),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'We have sent the 4 digit verification code',
              style: th.bodySmall
                  ?.copyWith(fontWeight: FontWeight.w500, color: appColorBlack),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            CustomTextField(
              controller: numberController,
              labelText: 'Mobile Number',
              hintText: '+91 966666666',
              inputFormatters: [],
            ),
            const SizedBox(height: 20),
            CustomButtonWidget(
                text: 'SEND',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpVerifyByNumber()));
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:easy_stepper/easy_stepper.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/Provider/signupController.dart';
import 'package:work/Screens/SinginScreens/SignInWithPhone/sign_in_wit_phone.dart';
import 'package:work/utilities/app_color.dart';
import 'Screens/address_detail.dart';
import 'Screens/banking_information.dart';
import 'Screens/confirm_password.dart';
import 'Screens/create_acount.dart';
import 'Screens/driving_licence.dart';
import 'Screens/number_verify.dart';
import 'Screens/personal_details.dart';
import 'Screens/vechile_detail.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController signUpContr = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
        builder: (c) => Scaffold(
            appBar: AppBar(
              leading: InkWell(
                  onTap: () {
                    Get.offAll(const SignInWithPhone());
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              title: const Text("Sign UP"),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    clipBehavior: Clip.none,
                    child: EasyStepper(
                        activeStep: signUpContr.currentState,
                        lineStyle: const LineStyle(
                          lineLength: 90,
                          lineSpace: 0,
                          lineType: LineType.normal,
                          defaultLineColor: Colors.black,
                          finishedLineColor: AppColors.theme,
                          lineThickness: 1.5,
                        ),
                        // signUpContr.currentStateTextColor: Colors.black87,
                        finishedStepTextColor: Colors.black87,
                        internalPadding: 0,
                        showLoadingAnimation: false,
                        stepRadius: 6,
                        showStepBorder: false,
                        steps: [
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 0
                                    ? AppColors.theme
                                    : Colors.black,
                              ),
                            ),
                            customTitle:
                                iconTitle('Phone', signUpContr.currentState, 0),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 1
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle:
                                iconTitle('Phone', signUpContr.currentState, 2),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 2
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle('Password Confirm',
                                signUpContr.currentState, 2),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 3
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle('Driver\'s Licence',
                                signUpContr.currentState, 3),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 4
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle('Vechile\'s Licence',
                                signUpContr.currentState, 4),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 5
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle(
                                'Address Licence', signUpContr.currentState, 5),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 6
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle('Banking Inforation',
                                signUpContr.currentState, 6),
                          ),
                          EasyStep(
                            customStep: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: signUpContr.currentState >= 7
                                    ? Colors.orange
                                    : Colors.black,
                              ),
                            ),
                            customTitle: iconTitle(
                                'Detail', signUpContr.currentState, 7),
                          ),
                        ],
                        onStepReached: (index) => {}),
                  ),
                  if (signUpContr.currentState == 0)
                    const Expanded(child: CreateAccount()),
                  if (signUpContr.currentState == 1)
                    const Expanded(child: BankNumberVerify()),
                  if (signUpContr.currentState == 2)
                    const Expanded(child: ConfirmPassword()),
                  if (signUpContr.currentState == 3)
                    const Expanded(child: DrivingLicence()),
                  if (signUpContr.currentState == 4)
                    const Expanded(child: VehicleDetail()),
                  if (signUpContr.currentState == 5)
                    const Expanded(child: AddressDetail()),
                  if (signUpContr.currentState == 6)
                    const Expanded(child: BankingInformation()),
                  if (signUpContr.currentState == 7)
                    const Expanded(child: PersonalDetails()),
                ],
              ),
            )));
  }
}

iconTitle(text, currentState, index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        Icons.gpp_good_rounded,
        color: currentState >= index ? Colors.black : Colors.grey,
      ),
      SizedBox(
        width: 70,
        child: Text(
          text,
          style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: currentState >= index ? Colors.black : Colors.grey),
        ),
      )
    ],
  );
}

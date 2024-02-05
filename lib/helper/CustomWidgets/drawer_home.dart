import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/Models/profileModel.dart';
import 'package:work/Screens/HomeScreen/NewOrder/new_order.dart';
import 'package:work/Screens/PaymentScreen/payment_screen.dart';
import 'package:work/Screens/ProfileScreen/profile_screen.dart';
import 'package:work/Screens/SinginScreens/SignInWithPhone/sign_in_wit_phone.dart';
import 'package:work/Screens/WalletScreen/wallet_screen.dart';
import 'package:work/helper/app_constant.dart';
import 'package:work/utilities/shared_pref..dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var name = SharedPref.shared.pref?.getString(PrefKeys.name);

    var th = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          color: appPrimaryColor, borderRadius: BorderRadius.zero),
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: appColorWhite,
        surfaceTintColor: appPrimaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              padding: EdgeInsets.only(bottom: defaultPadding),
              color: appPrimaryColor,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  horizontalTitleGap: 10,
                  leading: CircleAvatar(radius: 30, child: Icon(Icons.person)),
                  title: Text(name!,
                      style: th.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: appColorWhite,
                      )),
                  subtitle: Text('View profile',
                      style: th.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: appColorGrey,
                      )),
                  onTap: () {
                    print('object');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                ),
              ),
            ),
            ListTile(
              title: Text('Overview',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_border),
              title: Text('New Order',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewOrderScreen()));
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.doc_plaintext),
              title: Text('Work Order',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: Text('Wallet',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.payments),
              title: Text('Payment',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_outline_sharp),
              title: Text('Rating',
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
            ),
            // InkWell(
            //   onTap: () {
            //     SharedPref.shared.pref?.setString(PrefKeys.isLoggedIn, "0");

            //     Get.offAll(const SignInWithPhone());
            //   },
            //   child: ListTile(
            //     leading: const Icon(
            //       Icons.login,
            //       color: Colors.red,
            //     ),
            //     title: Text('Logout',
            //         style: th.bodyMedium?.copyWith(
            //           fontWeight: FontWeight.w700,
            //           color: Colors.red,
            //         )),
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //   ),
            //   ),
          ],
        ),
      ),
    );
  }
}

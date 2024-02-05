import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/Screens/ProfileScreen/components/menu_type.dart';
import 'package:work/Screens/ProfileScreen/components/profile_card.dart';
import 'package:work/Screens/RegistrationScreens/Screens/vechile_detail.dart';
import 'package:work/Screens/SinginScreens/SignInWithPhone/sign_in_wit_phone.dart';
import 'package:work/utilities/shared_pref..dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        flexibleSpace:
            ProfileCard(name: 'name', email: 'email', phone: 'phone'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          MenuType(
            icon: Icons.menu,
            type: 'Vechicle Info',
            function: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VehicleDetail()));
            },
          ),
          Divider(),
          MenuType(
            icon: Icons.person,
            type: 'Driving\' Licencse',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: CupertinoIcons.location_solid,
            type: 'Address Information',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.contact_page,
            type: 'Bank Information',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.support_agent_rounded,
            type: 'Customer support',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.question_mark,
            type: 'FAQ',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.lock_open_outlined,
            type: 'Change password',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.lock_open_outlined,
            type: 'Change password',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.currency_exchange_sharp,
            type: 'Currency',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.g_translate_rounded,
            type: 'Change Language',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.dark_mode,
            type: 'Change Theme',
            function: () {},
          ),
          Divider(),
          MenuType(
            icon: Icons.power_settings_new_outlined,
            type: 'Logout',
            function: () {
              SharedPref.shared.pref?.setString(PrefKeys.isLoggedIn, "0");

              Get.offAll(const SignInWithPhone());
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

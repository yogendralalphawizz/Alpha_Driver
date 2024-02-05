import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:work/Models/profileModel.dart';
import 'package:work/Screens/HomeScreen/NotificationScreen/notifiaction_screen.dart';
import 'package:work/helper/CustomWidgets/drawer_home.dart';
import 'package:work/helper/app_constant.dart';
import 'package:work/utilities/app_color.dart';
import 'package:work/utilities/shared_pref..dart';
import '../../Models/person_details.dart';
import '../../Provider/current_order_controller.dart';
import '../../helper/CustomWidgets/default_button.dart';
import '../OrderScreens/QrScreen/qr_screen.dart';
import 'components/delivery_card.dart';
import 'components/delivery_status_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CurrentOrderController currentOrderController = Get.put(CurrentOrderController());

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }
  @override
  void initState() {
    super.initState();
    currentOrderController.initialize();
  }
  int index = 1;
  @override
  Widget build(BuildContext context) {
    var model =
        jsonDecode(SharedPref.shared.pref!.getString(PrefKeys.userDetails)!);

    Datum user = Datum.fromJson(model);
    var th = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      drawer: HomeDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appThemeColor,
        toolbarHeight: 50,
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: defaultPadding * 4),
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            openDrawer();
                          },
                          child: Icon(Icons.menu, color: appColorWhite)))),
              Expanded(
                  flex: 5,
                  child: Center(
                      child: Text(
                    'Work Order',
                    style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700, color: appColorWhite),
                  ))),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: false,
                        child: IconButton(
                          icon: Icon(Icons.filter_alt_rounded,
                              color: appColorWhite),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationScreen()));
                          },
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen()));
                              },
                              child: Icon(Icons.notification_important,
                                  color: appColorWhite))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
          children: [
            DeliveryStatusCard(
              failedOrder: '11',
              deliverOrder: '2',
              pendingOrder: '1',
            ),
            ButtonsWidgets(
              index: index,
              buttonFirstText: 'All Delivery (10)',
              buttonSecondText: 'Alpha Delivery',
              onPressed1: () {
                setState(() {
                  index = 1;
                });
              },
              onPressed2: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            if (index == 1)
              Obx(
                 () {
                   List<dynamic> lists=currentOrderController.orderDataList;
                  return Container(
                    height: screenHeight * 0.68,
                    child: ListView.builder(
                        itemCount: currentOrderController.orderDataList.length,
                        itemBuilder: (context, index) {
                          var list = currentOrderController.orderDataList[index];
                          // String orderType='';
                          // if(list.shippingAddress.isBilling==0){
                          //   orderType='Delivery';
                          // }
                          return DeliveryCard(
                            name: list.customerName,
                            orderType: 'Delivery',
                            address: list.shippingAddress.address+" "+list.shippingAddress.address1+" "+list.shippingAddress.zip,
                            orderCount: list.totalDelivery,
                            list: list,
                          );
                        }),
                  );
                }
              ),
            if (index == 2)
              Obx(
                () {
                  return Container(
                    height: screenHeight * 0.68,
                    child: ListView.builder(
                        itemCount:  currentOrderController.alphaOrderDataList.length,
                        itemBuilder: (context, index) {
                          var list = currentOrderController.alphaOrderDataList[index];
                          // String orderType='';
                          // if(list.shippingAddress.isBilling==0){
                          //   orderType='Delivery';
                          // }
                          return DeliveryCard(
                            name: list.customerName,
                            orderType: 'Delivery',
                            address: list.shippingAddress.address+" "+list.shippingAddress.address1+" "+list.shippingAddress.zip,
                            orderCount: list.totalDelivery,
                            list: list,
                          );
                        }),
                  );
                }
              )
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(8),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: appPrimaryColor),
        child: IconButton(
          icon: Icon(
            CupertinoIcons.qrcode_viewfinder,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrScannerScreen(
                          list: currentOrderController.orderDataList[index],
                        )));
          },
        ),
      ),
    );
  }
}

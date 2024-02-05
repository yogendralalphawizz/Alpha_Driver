import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:work/Screens/OrderScreens/OrderShipment/order_shipment_after_scan.dart';

import '../../../Models/order_model.dart';
import '../../../Models/person_details.dart';
import '../../../Provider/order_detail_controller.dart';
import '../../../helper/CustomWidgets/bottom_button_widget.dart';
import '../../../helper/app_constant.dart';
import 'compoments/price_details.dart';
import 'compoments/scan_delivery_card.dart';

class OrderShipment extends StatelessWidget {
  Datuo list;
   OrderShipment({super.key,required this.list});
  final OrderDetailController orderDetailController = Get.put(OrderDetailController());


  @override
  Widget build(BuildContext context) {
    orderDetailController.getAllOrders(list.orderId.toString());
    var th= Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appPrimaryColor,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(CupertinoIcons.left_chevron,color: appColorWhite,)),
        title:Center(
          child: Text('Order Shipment  ',style: th.bodyLarge?.
          copyWith(
            fontSize: 18,
              fontWeight: FontWeight.w700,color: appColorWhite
          ),),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: appCardColor,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding*2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(list.customerName,style: th.bodyMedium?.
                copyWith(
                  fontWeight: FontWeight.w700,color: appColorBlack,
                ),),
                const SizedBox(height: 5,),
                Text(list.shippingAddress.address,style: th.bodyMedium?.
                copyWith(
                  fontWeight: FontWeight.w500,color: appColorBlack,
                )),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex:5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone ',style: th.bodyMedium?.
                          copyWith(
                            fontWeight: FontWeight.w700,color: appColorBlack,
                          ),),
                          Text(list.shippingAddress.phone,style: th.bodyMedium?.
                          copyWith(
                            fontWeight: FontWeight.w700,color: appColorBlack,
                          ),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: appPrimaryColor
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call,size:18,color: appColorWhite,),
                              const SizedBox(width: 5,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderShipmentAfterScan(list: list)));
                                },
                                child: Text('Call',style: th.bodyMedium?.
                                copyWith(
                                  fontWeight: FontWeight.w700,color: appColorWhite,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text('Scan and Delivery Details ',style: th.bodyMedium?.
            copyWith(
              fontWeight: FontWeight.w700,color: appColorBlack,
            ),),
          ),
           ScanDeliveryDetail(productId: '11111', deliveryTpe: 'Alpha Delivery', price: '20000', list: list,),
           ScanDeliveryDetail(productId: '11111', deliveryTpe: 'Alpha Delivery', price: '20000', list: list,),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text('Price Details ',style: th.bodyMedium?.
            copyWith(
              fontWeight: FontWeight.w700,color: appColorBlack,
            ),),
          ),
          const SizedBox(height: 5,),
          const PriceDetails(price: '120', discount: '80', item: '1', deliveryFee: '0',),
        ],
      ),
      bottomSheet: BottomButtonWidget(onPressed1: () {  }, onPressed2: () {  }, buttonText1: 'RESCHUDLE', buttonText2: 'CONFIRM',),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:work/Screens/OrderScreens/QrScreen/qr_screen.dart';
import 'package:work/helper/app_constant.dart';

import '../../../../Models/order_model.dart';
import '../../../../Models/person_details.dart';

class ScanDeliveryDetail extends StatelessWidget {
  final String productId;
  final String deliveryTpe;
  final String price;
  Datuo list;
   ScanDeliveryDetail({super.key, required this.productId, required this.deliveryTpe, required this.price ,required this.list});

  @override
  Widget build(BuildContext context) {
    var th= Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsets.all(defaultPadding),
      elevation: 0,
      color: appCardColor,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productId,style: th.bodyMedium?.
            copyWith(
              fontWeight: FontWeight.w700,color: appColorBlack,
            ),),
            Text(deliveryTpe,style: th.bodyMedium?.
            copyWith(
              fontWeight: FontWeight.w700,color: Colors.grey,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(price,style: th.bodyMedium?.
                  copyWith(
                    fontWeight: FontWeight.w700,color: appColorBlack,
                  ),),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>QrScannerScreen(list: list,)));
                          },
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: appPrimaryColor
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.qr_code_scanner_sharp,size: 20,color: appColorWhite,),
                                  SizedBox(width: 5,),
                                  Text('scan',style: th.bodyMedium?.
                                  copyWith(
                                    fontWeight: FontWeight.w700,color: appColorWhite,
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),

                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red
                        ),
                        child: Icon(Icons.cancel_outlined,color: appColorWhite,)
                      ),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:work/Screens/HomeScreen/NewOrder/new_order_detail.dart';
import 'package:work/helper/CustomWidgets/custom_button.dart';
import 'package:work/helper/app_constant.dart';

class OrderCardWidget extends StatelessWidget {
  final String productName;
  final String orderID;
  final double amount;
  const OrderCardWidget({super.key, required this.productName, required this.orderID, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName,style: Theme.of(context).textTheme.bodyLarge?.
            copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w800,color: appColorBlack,
            ),overflow: TextOverflow.ellipsis,),
            Text('Order ID - '+orderID,style: Theme.of(context).textTheme.bodyMedium?.
            copyWith(
              fontWeight: FontWeight.w500,color: appColorBlack,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ '+amount.toString(),style: Theme.of(context).textTheme.bodyLarge?.
                copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,color: appPrimaryColor,
                ),),
                CustomButtonWidget(text: 'Accept', onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewOrderDetail()));
                })
              ],
            )

          ],
        ),
      ),
    );
  }
}

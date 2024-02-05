import 'package:flutter/material.dart';

import '../../../../helper/app_constant.dart';

class PriceDetails extends StatelessWidget {
  final String price;
  final String discount;
  final String item;
  final String deliveryFee;
  const PriceDetails({super.key, required this.price, required this.discount, required this.item, required this.deliveryFee});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('MRP '+'('+item+')',style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: Colors.grey,
              ),),
              Text('\$'+price,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text('Delivery Fees ',style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: Colors.grey,
              ),),
              Text('\$'+deliveryFee,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text('Discount ',style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: Colors.grey,
              ),),
              Text('\$'+discount,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            height: 0.5,
            color: Colors.grey,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Amount ',style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
              Text('\$'+price,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            height: 0.5,
            color: Colors.grey,
          ),
        ]
      ),
    );
  }
}

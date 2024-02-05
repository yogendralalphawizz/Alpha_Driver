import 'package:flutter/material.dart';

import '../../../helper/app_constant.dart';

class AmountWidget extends StatelessWidget {
  final int amount;
  final int delivery;
  const AmountWidget({super.key, required this.amount, required this.delivery});

  @override
  Widget build(BuildContext context) {
    final th= Theme.of(context).textTheme;
    return Container(
      color: appCardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.wallet,size: 32,),
              Text('Total Amount',style: th.bodyMedium?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: appColorBlack,
              ),),
              Text('\$ '+amount.toString(),style: th.bodyMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: appColorBlack,
              ),),
            ],
          ),
          Container(
            width: 1,
            margin: EdgeInsets.symmetric(vertical: 30),
            height: 80,
            color: appColorGrey,

          ),
          Column(
            children: [
              Icon(Icons.delivery_dining,size: 32,),
              Text('Total Delivery',style: th.bodyMedium?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: appColorBlack,
              ),),
              Text(delivery.toString(),style: th.bodyMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: appColorBlack,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

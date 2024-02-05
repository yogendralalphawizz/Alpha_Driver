import 'package:flutter/material.dart';

import '../../../../helper/app_constant.dart';

class OrderWithImage extends StatelessWidget {
  final String productName;
  final double amount;
  const OrderWithImage({super.key, required this.productName, required this.amount});

  @override
  Widget build(BuildContext context) {
    final th=Theme.of(context).textTheme;
    return Row(
      children: [
        Icon(Icons.image,size: 60,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              child: Text(productName,style: th.bodyMedium?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: appColorBlack,
              ),overflow: TextOverflow.ellipsis,),
            ),
            Text('\$ '+amount.toString(),style: th.bodyMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: appPrimaryColor,
            ),),

          ],
        )
      ],
    );
  }
}

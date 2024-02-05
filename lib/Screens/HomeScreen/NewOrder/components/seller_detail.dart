import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../helper/app_constant.dart';

class SellerDetail extends StatelessWidget {
  const SellerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Seller Detail',style: th.bodyMedium?.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: appColorBlack,
          ),),
          Text('Vijay Kumar',style: th.bodyLarge?.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: appColorBlack,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('2972 westheimer Rd. Santa Anand',style: th.bodyMedium?.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: appColorGrey,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.location_solid),
                  SizedBox(width: 5,),
                  Text('View route',style: th.bodyMedium?.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: appColorBlack,
                  ),),
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                  color: appPrimaryColor),
              color: appPrimaryColor.withOpacity(0.4),
            ),
            child: Center(
              child: Text('Delivered',style: th.bodyMedium?.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: appPrimaryColor,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}

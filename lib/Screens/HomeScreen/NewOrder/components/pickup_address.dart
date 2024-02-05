import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/helper/app_constant.dart';

class PickUpAddress extends StatelessWidget {
  final String localaddress;
  final String name;
  final String state;
  final String zipCode;
  final String phone;
  const PickUpAddress({super.key, required this.localaddress, required this.name, required this.state, required this.zipCode, required this.phone});

  @override
  Widget build(BuildContext context) {
    final th= Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.location_solid),
              Text('Pickup address',style: th.bodyMedium?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: appColorBlack,
              ),),
            ],
          ),
          SizedBox(height: 5,),
          Text(localaddress,style: th.bodyMedium?.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: appColorGrey,
          ),),
          SizedBox(height: 3,),
          Text(name,style: th.bodyMedium?.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: appColorGrey,
          ),),
          SizedBox(height: 3,),
          Text(state,style: th.bodyMedium?.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: appColorGrey,
          ),),
          SizedBox(height: 3,),
          Text(zipCode,style: th.bodyMedium?.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: appColorGrey,
          ),),
          SizedBox(height: 3,),
          Text('Phone - '+phone,style: th.bodyMedium?.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: appColorGrey,
          ),),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Models/person_details.dart';
import 'package:work/Screens/OrderScreens/OrderShipment/order_shipment.dart';
import 'package:work/helper/app_constant.dart';

import '../../../Models/order_model.dart';

class DeliveryCard extends StatelessWidget {
  Datuo list;
  String name;
  String address;
  String orderType;
  int orderCount;
  DeliveryCard({super.key,required this.name,required this.address, required this.orderType, required this.orderCount,required this.list});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderShipment(list: list,)));
      },
      child: Card(
        elevation: 0,
        color: appCardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              ),),
              SizedBox(height: 5,),
              Text(address,style: th.bodyMedium?.
              copyWith(
                fontWeight: FontWeight.w500,color: appColorBlack,
              )),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderType,style: th.bodyMedium?.
                      copyWith(
                        fontWeight: FontWeight.w500,color: appButtonUnSelected,
                      )),
                      Text(orderCount.toString(),style: th.bodyMedium?.
                      copyWith(
                        fontWeight: FontWeight.w600,color: appColorBlack,
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.location_solid,color: appPrimaryColor,size: 16,),
                      SizedBox(width: 5,),
                      Text('View Route',style: th.bodyMedium?.
                      copyWith(
                        fontWeight: FontWeight.w600,color: appPrimaryColor,
                      )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

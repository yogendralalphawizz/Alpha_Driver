import 'package:flutter/material.dart';

import '../../../../helper/app_constant.dart';

class NotificationCard extends StatelessWidget {
  final String notificationTitle;
  final String notificationDetail;
  final String notificationDate;
  final bool isOverflow;
  const NotificationCard({super.key, required this.notificationTitle, required this.notificationDetail, required this.notificationDate, required this.isOverflow});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.63,
                    child: Text(notificationTitle,style: th.bodyMedium?.
                    copyWith(
                      fontWeight: FontWeight.w700,color: appColorBlack,
                    ),overflow: TextOverflow.ellipsis,),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.66,
                    child: Text(notificationDetail,style: th.bodySmall?.
                    copyWith(
                      fontWeight: FontWeight.w500,color: appColorBlack,
                    ),overflow: isOverflow?TextOverflow.ellipsis:null,),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              Text(notificationDate,style: th.bodySmall?.
              copyWith(
                fontWeight: FontWeight.w700,color: appColorBlack,
              )),
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            height: 1,
            color: appColorBlack,
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

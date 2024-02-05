import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helper/app_constant.dart';
import 'components/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appPrimaryColor,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(CupertinoIcons.left_chevron,color: appColorWhite,)),
        title:Center(
          child: Text('Notification ',style: th.bodyLarge?.
          copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,color: appColorWhite
          ),),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            bool isOverflow=false;
            if(index%2==0)
              isOverflow=true;

            return NotificationCard(notificationTitle: 'New Order Placed Alert from your side',
              notificationDetail: 'It is a long established fact that a reader will be distracted by point of using',
              notificationDate: '08 Mar 2023', isOverflow: isOverflow,);

      }),
    );
  }
}

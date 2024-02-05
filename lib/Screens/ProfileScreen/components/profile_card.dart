import 'package:flutter/material.dart';
import 'package:work/helper/app_constant.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  const ProfileCard({super.key, required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          color: appPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.chevron_left,color: appColorWhite,)),
              Text('Profile',style: th.bodyLarge?.
              copyWith(
                  fontWeight: FontWeight.w700,color: appColorWhite
              ),),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: appColorWhite,)),
            ],
          ),
          SizedBox(height: 10,),

          CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: Icon(Icons.image,color: appColorBlack,),
          ),
          SizedBox(height: 10,),

          Text(name,style: th.bodyLarge?.
          copyWith(
            fontSize: 12,
              fontWeight: FontWeight.w700,color: appColorWhite
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined,size: 14,color: appColorWhite,),
              Text(email,style: th.bodyLarge?.
              copyWith(
                fontSize: 11,
                  fontWeight: FontWeight.w500,color: appColorWhite
              ),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone,size: 12,color: appColorWhite,),
              Text(phone,style: th.bodyLarge?.
              copyWith(
                fontSize: 11,
                  fontWeight: FontWeight.w500,color: appColorWhite
              ),)
            ],
          ),
        ],
      ),
    );
  }
}

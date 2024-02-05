import 'package:flutter/material.dart';

import '../app_constant.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseScaffold({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Scaffold(
      appBar:AppBar(
        title: Text('Wallet History',style: th.bodyMedium?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: appColorWhite
        ),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.chevron_left,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: child,
    );
  }
}

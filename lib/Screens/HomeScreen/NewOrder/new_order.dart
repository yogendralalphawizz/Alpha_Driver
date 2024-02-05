import 'package:flutter/material.dart';
import 'package:work/Screens/HomeScreen/NewOrder/components/order_card_widget.dart';

import '../../../helper/app_constant.dart';

class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(icon: Icon(Icons.menu,color: appColorWhite,),onPressed: (){},),
        title:  Text('New Order',style: th.bodyMedium?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: appColorWhite
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ListView(
          children: const [
            OrderCardWidget(productName: 'Dettol Refresh Long Lasting',
                orderID: 'OID12345678', amount: 120.00),
            SizedBox(height: 5,),
            OrderCardWidget(productName: 'Dettol Refresh Long Lasting',
                orderID: 'OID12345678', amount: 120.00),
            SizedBox(height: 5,),
            OrderCardWidget(productName: 'Dettol Refresh Long Lasting',
                orderID: 'OID12345678', amount: 120.00),
            SizedBox(height: 5,),
            OrderCardWidget(productName: 'Dettol Refresh Long Lasting',
                orderID: 'OID12345678', amount: 120.00),
            SizedBox(height: 5,),
            OrderCardWidget(productName: 'Dettol Refresh Long Lasting',
                orderID: 'OID12345678', amount: 120.00),
          ],
        ),
      ),
    );
  }
}

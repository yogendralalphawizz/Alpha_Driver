import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Screens/HomeScreen/NewOrder/components/order_delivery_status.dart';
import 'package:work/Screens/HomeScreen/NewOrder/components/order_with_image.dart';
import 'package:work/Screens/HomeScreen/NewOrder/components/pickup_address.dart';
import 'package:work/helper/CustomWidgets/base_scaffold.dart';
import 'package:work/helper/CustomWidgets/custom_button.dart';
import 'package:work/helper/app_constant.dart';

import '../../OrderScreens/OrderShipment/compoments/price_details.dart';
import 'components/seller_detail.dart';

class NewOrderDetail extends StatelessWidget {
  const NewOrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return BaseScaffold(
      title: 'Order Detail',
      child: ListView(
        children: [
          SizedBox(height: 20,),
          SellerDetail(),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text('Order ID - OID524662436325',style: th.bodyMedium?.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: appColorBlack,
            ),),
          ),
          SizedBox(height: 10,),
          OrderWithImage(productName: 'Dettol Refresh Long Lasting',
              amount: 120.00),
          SizedBox(height: 10,),
          const PriceDetails(price: '120', discount: '80', item: '1', deliveryFee: '0',),
          SizedBox(height: 10,),
          PickUpAddress(localaddress: '2118 Thornridge Cir. Syracuse, Connecticut 3536',
              name: 'Naman Pawar',
              state: 'Indore',
              zipCode: 'MP -452010',
              phone: '91991919199'),
          SizedBox(height: 20,),
          OrderDeliveryStatus(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: CustomButtonWidget(text: 'ACCEPT',
                onPressed: (){}),
          )

        ],
      ),
    );
  }
}

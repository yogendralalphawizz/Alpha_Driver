import 'package:flutter/material.dart';
import 'package:work/helper/CustomWidgets/custom_button.dart';

import '../../../helper/app_constant.dart';

class BalanceWidget extends StatelessWidget {
  final double amount;
  const BalanceWidget({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Container(
      height: MediaQuery.of(context).size.height*0.37,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.wallet,size: 120,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.currency_exchange_sharp),
              SizedBox(width: 5,),
              Text('\$ '+amount.toString(),style: th.bodyLarge?.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: appColorBlack
              ),),
            ],
          ),
          Text('Current Balance',style: th.bodyMedium?.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: appColorGrey
          ),),
          const SizedBox(height: 5,),
          CustomButtonWidget(text: 'Request for Withdraw', onPressed: (){})
        ],
      ),
    );
  }
}

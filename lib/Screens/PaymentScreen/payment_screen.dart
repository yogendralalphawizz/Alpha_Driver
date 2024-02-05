import 'package:flutter/material.dart';
import 'package:work/Screens/PaymentScreen/component/amount_widget.dart';
import 'package:work/helper/CustomWidgets/base_scaffold.dart';

import '../../helper/app_constant.dart';
import '../WalletScreen/components/payment_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final th=Theme.of(context).textTheme;
    return BaseScaffold(
        title: 'Payment',
        child: ListView(
          children: [
            const AmountWidget(amount: 534, delivery: 43),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text('Scan and delivery detail',style: th.bodyMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: appColorBlack,
                  ),),
                  const SizedBox(height: 20,),
                  const PaymentWidget(paymentType: 'Online Payment',
                      paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                      amount: 200),
                  const PaymentWidget(paymentType: 'Card Payment',
                      paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                      amount: 200),
                  const PaymentWidget(paymentType: 'Online Payment',
                      paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                      amount: 200),
                  const PaymentWidget(paymentType: 'Card Payment',
                      paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                      amount: 200),
                  const PaymentWidget(paymentType: 'Online Payment',
                      paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                      amount: 200),
                ],
              ),
            ),

          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:work/Screens/WalletScreen/components/payment_widget.dart';
import 'package:work/helper/CustomWidgets/base_scaffold.dart';
import 'package:work/helper/app_constant.dart';

class WalletHistoryScreen extends StatelessWidget {
  const WalletHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: 'Wallet History',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: ListView(
            children: const [
              SizedBox(height: 20,),
              PaymentWidget(paymentType: 'Online Payment',
                  paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Card Payment',
                  paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Online Payment',
                  paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Card Payment',
                  paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Online Payment',
                  paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Card Payment',
                  paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Online Payment',
                  paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Card Payment',
                  paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Online Payment',
                  paymentStatus: 'Accepted', paymentDate: '02 oct 2022',
                  amount: 200),
              PaymentWidget(paymentType: 'Card Payment',
                  paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                  amount: 200),
            ],
          ),
        ));
  }
}

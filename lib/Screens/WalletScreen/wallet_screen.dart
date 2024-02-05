import 'package:flutter/material.dart';
import 'package:work/Screens/WalletScreen/components/balance_widget.dart';
import 'package:work/Screens/WalletScreen/components/payment_widget.dart';
import 'package:work/Screens/WalletScreen/wallet_history.dart';
import 'package:work/helper/app_constant.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu,color: appColorWhite,),onPressed: (){},),
        title:  Text('Wallet',style: th.bodyMedium?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: appColorWhite
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
          children:  [
            const BalanceWidget(amount: 120.99),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wallet History',style: th.bodyMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: appColorBlack
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const WalletHistoryScreen()));
                  },
                  child: Text('View all',style: th.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: appPrimaryColor
                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
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
            const PaymentWidget(paymentType: 'Card Payment',
                paymentStatus: 'Cancelled', paymentDate: '02 oct 2022',
                amount: 200),
          ],
        ),
      ),
    );
  }
}

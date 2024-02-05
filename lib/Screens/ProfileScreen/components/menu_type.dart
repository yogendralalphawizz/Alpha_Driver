import 'package:flutter/material.dart';
import 'package:work/helper/app_constant.dart';

class MenuType extends StatelessWidget {
  final IconData icon;
  final String type;
  final VoidCallback function;
  const MenuType({super.key, required this.icon, required this.type, required this.function});

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context).textTheme;
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(icon,color: appColorBlack,size: 20,))),
          Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(type,style: th.bodyLarge?.
              copyWith(
                fontSize: 12,
                  fontWeight: FontWeight.w600,color: appColorBlack
              ),),
            ),
          ),
          Expanded(
              flex:1,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(icon:Icon(Icons.chevron_right),onPressed: function))),
        ],
      ),
    );
  }
}

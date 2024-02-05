import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:work/Models/order_detail.dart';

import '../utilities/api_manager/apis.dart';
import '../utilities/api_manager/http_client.dart';

class OrderDetailController extends GetxController {
  RxBool isLoading = false.obs;
  var priceList=<PriceDetail>[].obs;

  getAllOrders(String id) async {
    isLoading = true.obs;

    update();

    final res = await HTTPClient.getOrderResponse(APIs.ordersDetail + id);
    final body=jsonDecode(res.body);
    var priceDetail=body['data']['price_detail'];
    PriceDetail priceDetailData=PriceDetail(priceDetail['subtotal'],
        priceDetail['item_price'], priceDetail['discount'],
        priceDetail['delivery_fee'], priceDetail['tax'], priceDetail['total']);
    priceList.add(priceDetailData);
    print(body);
  }
}
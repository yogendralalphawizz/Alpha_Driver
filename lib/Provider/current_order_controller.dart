import 'dart:convert';

import 'package:get/get.dart';

import '../Models/order_model.dart';
import '../utilities/api_manager/apis.dart';
import '../utilities/api_manager/http_client.dart';

class CurrentOrderController extends GetxController {
  RxBool isLoading = false.obs;
  var orderDataList = <Datuo>[].obs;
  var alphaOrderDataList = <Datuo>[].obs;
  List tabs = <String>[].obs;
  getAllOrders() async {
    isLoading = true.obs;

    update();

    final res = await HTTPClient.getOrderResponse(APIs.orders);
    final body = jsonDecode(res.body);
    tabs = [body['tab']['all'], body['tab']['all']];
    for (var u in body['data']) {
      var shippingAddress = u['shipping_address'];
      ShipingModel address = ShipingModel(
          shippingAddress['id'],
          shippingAddress['customer_id'],
          shippingAddress['contact_person_name'],
          shippingAddress['address_type'],
          shippingAddress['address'],
          shippingAddress['address1'],
          shippingAddress['city'],
          shippingAddress['zip'],
          shippingAddress['phone'],
          shippingAddress['alt_phone'],
          shippingAddress['created_at'],
          shippingAddress['updated_at'],
          shippingAddress['state'],
          shippingAddress['country'],
          shippingAddress['latitude'],
          shippingAddress['longitude'],
          shippingAddress['is_billing']);
      print(address);

      Datuo data = Datuo(
          u['order_id'], u['total_delivery'], u['customer_name'], address);
      orderDataList.add(data);
    }
  }

  getAlphaOrders() async {
    isLoading = true.obs;

    update();
    final res = await HTTPClient.getOrderResponse(APIs.alphaOrders);
    final body = jsonDecode(res.body);
    tabs = [body['tab']['all'], body['tab']['all']];
    for (var u in body['data']) {
      var shippingAddress = u['shipping_address'];
      ShipingModel address = ShipingModel(
          shippingAddress['id'],
          shippingAddress['customer_id'],
          shippingAddress['contact_person_name'],
          shippingAddress['address_type'],
          shippingAddress['address'],
          shippingAddress['address1'],
          shippingAddress['city'],
          shippingAddress['zip'],
          shippingAddress['phone'],
          shippingAddress['alt_phone'],
          shippingAddress['created_at'],
          shippingAddress['updated_at'],
          shippingAddress['state'],
          shippingAddress['country'],
          shippingAddress['latitude'],
          shippingAddress['longitude'],
          shippingAddress['is_billing']);
      print(address);

      Datuo data = Datuo(
          u['order_id'], u['total_delivery'], u['customer_name'], address);
      alphaOrderDataList.add(data);
    }
  }

  initialize() {
    orderDataList.clear();
    alphaOrderDataList.clear();
    getAllOrders();
    getAlphaOrders();
  }
}

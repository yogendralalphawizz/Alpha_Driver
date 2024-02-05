// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Datuo {
  int orderId;
  int totalDelivery;
  String customerName;
  ShipingModel shippingAddress;

  Datuo(this.orderId, this.totalDelivery, this.customerName,
      this.shippingAddress);
}

class ShipingModel {
  int id;
  int customerId;
  String contactPersonName;
  String addressType;
  String address;
  String address1;
  String city;
  String zip;
  String phone;
  String altPhone;
  String createdAt;
  String updatedAt;
  String state;
  String country;
  String latitude;
  String longitude;
  int isBilling;

  ShipingModel(
      this.id,
      this.customerId,
      this.contactPersonName,
      this.addressType,
      this.address,
      this.address1,
      this.city,
      this.zip,
      this.phone,
      this.altPhone,
      this.createdAt,
      this.updatedAt,
      this.state,
      this.country,
      this.latitude,
      this.longitude,
      this.isBilling);
}

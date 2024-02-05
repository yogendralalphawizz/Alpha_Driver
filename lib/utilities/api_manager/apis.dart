class APIs {
  static const base =
      "https://alpha-ecom.developmentalphawizz.com/api/v2/delivery-man/";

  static const sendOtp = "${base}auth/send-otp";
  static const sendOtpReg = "${base}auth/register-otp";
  static const register = "${base}auth/register";
  static const loginMail = "${base}auth/login";
  static const profile = "${base}info";
  static const orders = "${base}current-orders?delivery_type=all";
  static const alphaOrders = "${base}current-orders?delivery_type=alpha_delivery";
  static const ordersDetail = "${base}order-details?order_id=";
}

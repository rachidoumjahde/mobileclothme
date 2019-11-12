import 'package:clothme/core/provider_state/model/common/address.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';

class DeliveryDetail {
  String userId;
  String firstName;
  String lastName;
  String phoneNumber;
  List<Address> address;
  List<UserModel> contacts;
  String deliveryInstructions;

  DeliveryDetail({
    this.userId,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.address,
    this.contacts,
    this.deliveryInstructions,
  });
}
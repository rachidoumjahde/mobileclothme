import 'package:kt_dart/collection.dart';
import 'package:treva_shop_flutter/src/model/user.dart';

class CreateUser {
  final User user;
  CreateUser(this.user);
}

class FetchUser {
  final User user;
  FetchUser(this.user);
}

class FetchAllUsers {
  final User users;
  FetchAllUsers(this.users);
}

class UpdateUser {
  final User user;
  UpdateUser(this.user);
}

class DeleteUser {
  final User user;
  DeleteUser(this.user);
}
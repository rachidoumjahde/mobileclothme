import 'package:treva_shop_flutter/src/model/circle.dart';
import 'package:treva_shop_flutter/src/model/user.dart';


class FetchCircle {
  final Circle circle;
  FetchCircle(this.circle);
}

class FetchCircles {
  final Circle circles;
  FetchCircles(this.circles);
}

class UpdateCircle {
  final Circle circle;
  UpdateCircle(this.circle);
}

class RemoveCircle {
  final Circle circle;
  RemoveCircle(this.circle);
}

class AddMemberToCircle {
  final User user;
  AddMemberToCircle(this.user);
}

class CreateCircle {
  final Circle circle;
  CreateCircle(this.circle);
}
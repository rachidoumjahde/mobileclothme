import 'package:treva_shop_flutter/src/model/company.dart';


class FetchCompany {
  final Company company;
  FetchCompany(this.company);
}

class FetchCompanies {
  final Company companies;
  FetchCompanies(this.companies);
}

class UpdateCompany {
  final Company company;
  UpdateCompany(this.company);
}

class RemoveCompany {
  final Company company;
  RemoveCompany(this.company);
}

class AddCompany {
  final Company company;
  AddCompany(this.company);
}
import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/brand/brand_model.dart';
import 'package:clothme/core/service/brand/brand_service.dart';

class FavouriteBrandListViewModel {
  BrandService _brandService = locator<BrandService>();
  List<BrandModel> favouriteBrand;

  Future getFavouriteBrandList(String userId, String authHeader) async {
    favouriteBrand = (await _brandService.getUserFavouriteListData(userId, authHeader)) as List<BrandModel>;
    return favouriteBrand;
  }
}
import 'package:foodie/core/firebase/foodie_firebase_banner.dart';
import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../models/banner_model.dart';

class BannerRepo {
  final FoodieFirebaseBanner firebaseBanner;

  BannerRepo(this.firebaseBanner);

  Future<FirebaseResult<List<BannerModel>>> getBanners() async {
    try {
      var response = await firebaseBanner.banners();
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}

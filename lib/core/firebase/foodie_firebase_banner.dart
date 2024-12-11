import 'package:foodie/features/home/data/models/banner_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodieFirebaseBanner {
  Future<List<BannerModel>> banners() async {
    QuerySnapshot topicsSnapshot =
        await FirebaseFirestore.instance.collection('banners').get();
    List<BannerModel> banners = topicsSnapshot.docs
        .map((doc) => BannerModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return banners;
  }
}

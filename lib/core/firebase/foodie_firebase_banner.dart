import 'package:foodie/features/home/data/models/banner_model/banner_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FoodieFirebaseBanner {
  bool checkActive(BannerModel banner) {
    final currentDate = DateTime.now();
    final dateFormat = DateFormat('dd/MM/yyyy', 'en_US'); // Use fixed date format
    final start = dateFormat.parse(banner.startDate);
    final end = dateFormat.parse(banner.endDate);
    return currentDate.isAfter(start) && currentDate.isBefore(end);
  }

  Future<List<BannerModel>> banners() async {
    QuerySnapshot topicsSnapshot =
        await FirebaseFirestore.instance.collection('banners').get();
    List<BannerModel> banners = topicsSnapshot.docs.map((doc) {
      final banner = BannerModel.fromJson(doc.data() as Map<String, dynamic>)
        ..bannerId = doc.id;
      banner.isActive = checkActive(banner);
      return banner;
    }).toList();
    return banners;
  }
}

class BannerModel {
  final String bannerId;
  final String title;
  final String description;
  final String image;
  final String startDate;
  final String endDate;
  final bool isActive;

  BannerModel(
      {required this.bannerId,
      required this.title,
      required this.description,
      required this.image,
      required this.startDate,
      required this.endDate,
      required this.isActive});
}

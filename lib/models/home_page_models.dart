class HomeInfoModel {
  final String image;
  final String description;

  HomeInfoModel({
    required this.image,
    required this.description,
  });

  static List<HomeInfoModel> getList() {
    List<HomeInfoModel> homeInfo = [];

    homeInfo.add(HomeInfoModel(
      image: 'assets/images/home-1.png',
      description: 'Kumpulkan sampah &\ndapatkan poinnya',
    ));

    homeInfo.add(HomeInfoModel(
      image: 'assets/images/home-2.png',
      description: 'Mari budi dayakan untuk\nkebersihan lingkungan kita',
    ));

    homeInfo.add(HomeInfoModel(
      image: 'assets/images/home-4.png',
      description: 'Hindari sampah selain\nskincare/makeup',
    ));

    return homeInfo;
  }
}

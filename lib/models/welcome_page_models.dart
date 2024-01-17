class HomePageModel {
  String imagePath;
  String subtitle;
  bool isActive;

  HomePageModel({
    required this.imagePath,
    required this.subtitle,
    required this.isActive,
  });

  static List<HomePageModel> getList() {
    List<HomePageModel> homepages = [];

    homepages.add(HomePageModel(
      imagePath: 'assets/images/wp-1.png',
      subtitle: 'throw it away in the trash\nbin provided',
      isActive: true,
    ));

    homepages.add(HomePageModel(
      imagePath: 'assets/images/wp-2.png',
      subtitle: 'dispose of waste\nspecifically for skincare',
      isActive: false,
    ));

    homepages.add(HomePageModel(
      imagePath: 'assets/images/wp-3.png',
      subtitle: 'get a code/voucher at\nevery redemption',
      isActive: false,
    ));

    return homepages;
  }
}

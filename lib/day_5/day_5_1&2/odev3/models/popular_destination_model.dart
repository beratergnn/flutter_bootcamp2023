class PopularDestinationModel {
  final String imagePath;
  final String title;
  final String location;
  final String description;
  final String price;

  PopularDestinationModel(
      {required this.imagePath,
      required this.title,
      required this.location,
      required this.description,
      required this.price});

  static List<PopularDestinationModel> getDestinations() {
    List<PopularDestinationModel> destinationItems = [];

    destinationItems.add(PopularDestinationModel(
      title: 'The Pink Beach',
      location: 'Komodo Island, Indonesia',
      description:
          'This exceptional beach gets its striking color from microscopic animals called...',
      price: '\$48',
      imagePath: 'assets/ic_pink_beach.png',
    ));
    destinationItems.add(PopularDestinationModel(
      title: 'Meru Tower',
      location: 'Bali, Indonesia',
      description:
          'A Meru tower or pelinggih meru is the principal shrine of a Balinese temple. It is a wooden..',
      price: '\$36',
      imagePath: 'assets/ic_meru_tower.png',
    ));
    destinationItems.add(PopularDestinationModel(
      title: 'Toraja Land',
      location: 'South Sulawesi, Indonesia',
      description:
          'Toraja land is one the tourist destination area in indonesia that must be visited because it..',
      price: '\$48',
      imagePath: 'assets/ic_toraja_land.png',
    ));

    return destinationItems;
  }
}

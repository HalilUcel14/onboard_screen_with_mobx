class OnBoardModel {
  final String title;
  final String description;
  final String imagePath;

  OnBoardModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<String> imageOnboard = <String>[
  "assets/images/onboard/onboard_1.png",
  "assets/images/onboard/onboard_2.png",
  "assets/images/onboard/onboard_3.png",
];

List<OnBoardModel> baseOnBoardListed = [
  OnBoardModel(
    title: "TOKOTO",
    description: "Welcome to Tokoto, Let's Shop!",
    imagePath: imageOnboard[0],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description:
        "We help people connect with store around United State of America",
    imagePath: imageOnboard[1],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description: "We show the easy way to shop. Just stay at home with us",
    imagePath: imageOnboard[2],
  ),
];

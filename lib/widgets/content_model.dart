class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent({required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Quality Food',
    image: 'assets/images/laundry-1.jpg',
    description: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
  UnbordingContent(
    title: 'Fast Delevery',
    image: 'assets/images/laundry-2.jpeg',
    description: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
  UnbordingContent(
    title: 'Reward surprises',
    image: 'assets/images/laundry-3.jpg',
    description: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
];
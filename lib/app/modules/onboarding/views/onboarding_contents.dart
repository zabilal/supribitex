class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Instant Transactions On The Go!",
    image: "assets/images/image1.png",
    desc: "Trade All kinds of Gift cards at best market rate.",
  ),
  OnboardingContents(
    title: "State of Art Security",
    image: "assets/images/image2.png",
    desc:
        "You are in good company and your security is paramount to us",
  ),
  OnboardingContents(
    title: "Get all kinds of Payments Done with SupriBitex",
    image: "assets/images/image3.png",
    desc:
        "Trade Giftcards, Data Bundle , airtime recharge , power, airtime swap and more",
  ),
];

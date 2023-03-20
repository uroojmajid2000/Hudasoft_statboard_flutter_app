import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../signin/signin_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static String id = "onboarding_screen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: demo_data.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            itemBuilder: (context, index) => onboardingContainer(
              image: demo_data[index].image,
              title: demo_data[index].title,
              description: demo_data[index].description,
              pageIndex: _pageIndex,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Button(child: Text('SignUp'), onPressed: () {}),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: GestureDetector(
            onTap: () => Navigate.next(context, SigninScreen.id),
            // onTap: () => _pageController.nextPage(
            //     duration: Duration(milliseconds: 300), curve: Curves.ease),
            child: Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff00b0f0),
                fontSize: 17,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 10 : 10,
      width: 10,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : Color(0xffcddbf1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;
  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
      image: 'assets/images/onboarding_image.png',
      title: "Multiple venues for players",
      description:
          "Players can access unlimited venues to \nplay and create custom Teams"),
  Onboard(
      image: 'assets/images/onboarding_image.png',
      title: "Events organization for business",
      description:
          "Business profiles can add their venue or \nbranch and organize Matches or \ntournaments"),
  Onboard(
      image: 'assets/images/onboarding_image.png',
      title: "Talent hunt for scouts",
      description:
          "Hunters can access to all the players stats \nand also hire them"),
];

class onboardingContainer extends StatelessWidget {
  const onboardingContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageIndex,
  });
  final String image, title, description;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            image,
            height: 350,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: SvgPicture.asset(
            'assets/logos/signinscreen_logo.svg',
            width: 50,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              demo_data.length,
              ((index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(isActive: index == pageIndex),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff5d5757),
              fontSize: 15,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

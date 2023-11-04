import 'package:flutter/material.dart';
// import 'package:park_qr/Pages/login.dart';
// import 'package:park_qr/Pages/signup.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;
  final VoidCallback onBackPressed;
  final bool showBackButton;
  final bool showForwardButton;
  final bool isLastPage;

  const OnboardingPage({
    Key? key,
    required this.imagePath,
    required this.mainText,
    required this.onNextPressed,
    required this.onSkipPressed,
    required this.onBackPressed,
    this.showBackButton = true,
    this.showForwardButton = true,
    this.isLastPage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (showBackButton)
                    IconButton(
                      onPressed: onBackPressed,
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  if (!showBackButton)
                    Container(
                      width: 40,
                      height: 40,
                    ),
                  Center(
                      child: Container(
                        color: Colors.pink,
                        width: 40,
                        height: 40,
                      )),
                  if (showForwardButton)
                    IconButton(
                      onPressed: onNextPressed,
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  if (!showForwardButton)
                    Container(
                      width: 40,
                      height: 40,
                    ),
                ],
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: onNextPressed,
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(15.0),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(53, 85, 235, 1),
                          ),
                        ),
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              isLastPage ? 'Get Started' : 'Next',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (isLastPage)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => LoginPage(
                            //       onClickedSignup: () {},
                            //     ),
                            //   ),
                            // );
                          },
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: const [
                                TextSpan(
                                  text: 'Already a user? ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color.fromRGBO(53, 85, 235, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: TextButton(
                  onPressed: onSkipPressed,
                  child: const Text(
                    'Skip >',
                    style: TextStyle(
                      color: Color.fromRGBO(88, 87, 87, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'imagePath': 'assets/onboarding_1.png',
      'mainText': 'Welcome to TeslaX',
    },
    {
      'imagePath': 'assets/onboarding_2.png',
      'mainText': 'Register using your Mail and Phone Number',
    },
    {
      'imagePath': 'assets/onboarding_3.png',
      'mainText': 'Enter your personal Details',
    },
    {
      'imagePath': 'assets/onboarding_4.png',
      'mainText': 'Upload the Documents',
    },
    {
      'imagePath': 'assets/onboarding_5.png',
      'mainText': 'Welcome Onboard',
    },
  ];

  void _onNextPressed() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => SignupPage(
      //       onClickedSignIn: () {},
      //     ),
      //   ),
      // );
    }
  }

  void _onBackPressed() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onSkipPressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/skip_popup_image.png',
                  width: 200,
                  height: 140,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Parama read the tutorial',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Nee padichi olunga park pannanum',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(53, 85, 235, 1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            itemBuilder: (BuildContext context, int index) {
              return OnboardingPage(
                imagePath: onboardingData[index]['imagePath']!,
                mainText: onboardingData[index]['mainText']!,
                onNextPressed: _onNextPressed,
                onSkipPressed: _onSkipPressed,
                onBackPressed: _onBackPressed,
                showBackButton: index != 0,
                showForwardButton: index != onboardingData.length - 1,
                isLastPage: index == onboardingData.length - 1,
              );
            },
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
          ),
          const Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}

part of ezyagric_commons;

class SplashScreen extends StatelessWidget {
  SplashScreen(
      {super.key, required this.nextScreen, required this.splashImage});

  Widget nextScreen;
  final String splashImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset(
        width: 1000,
        splashImage,
        fit: BoxFit.cover,
      ),
      nextScreen: nextScreen,
      splashTransition: SplashTransition.fadeTransition,
      // backgroundColor: Colors.blue,
    );
  }
}

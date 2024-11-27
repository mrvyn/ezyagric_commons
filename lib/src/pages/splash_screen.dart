part of ezyagric_commons;

class SplashScreen extends StatelessWidget {
  SplashScreen(
      {super.key, required this.nextScreen, required this.splashImage});

  Widget nextScreen;
  final String splashImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // backgroundColor: Colors.blue,
      // centered: false,
      splashIconSize: double.infinity,

      duration: 3000,
      splash: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashImage),
            fit: BoxFit.cover,
          ),
        ),
      ),

      nextScreen: nextScreen,
      splashTransition: SplashTransition.fadeTransition,
      // backgroundColor: Colors.blue,
    );
  }
}

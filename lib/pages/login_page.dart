part of './pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop() {
      final screenWidth = Get.width;
      final screenHeight = Get.height;
      final threshold = 600; // Adjust this threshold according to your needs

      return screenWidth >= threshold && screenHeight >= threshold;
    }

    bool isPhone() {
      return !isDesktop();
    }

    return Scaffold(
      backgroundColor: AppColors().white,
      body: Center(
        child: isDesktop()
            ? Text('Running on a desktop!')
            : Text('Running on a phone!'),
      ),
    );
  }
}

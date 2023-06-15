part of './pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAllNamed('/login');
    });
    return Scaffold(
      backgroundColor: AppColors().white,
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Peersoan',
                style: TextStyle(
                  color: AppColors().primary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                child: CircularProgressIndicator(
                  color: AppColors().primary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

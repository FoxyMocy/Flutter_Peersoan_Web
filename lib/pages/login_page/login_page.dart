part of '../pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 767) {
            // For larger screens, display a two-column layout
            return LoginDestopView();
          } else {
            // For smaller screens, display a single-column layout
            return LoginPhoneView();
          }
        },
      ),
    );
  }
}

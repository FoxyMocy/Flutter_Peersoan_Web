part of '../pages.dart';

class LoginPhoneView extends StatelessWidget {
  const LoginPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Welcome to my PWA!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

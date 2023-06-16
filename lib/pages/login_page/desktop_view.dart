part of '../pages.dart';

class LoginDestopView extends StatelessWidget {
  const LoginDestopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SidePanel(),
        ),
        Expanded(
          flex: 2,
          child: ContentPanel(),
        ),
      ],
    );
  }
}

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Side Panel',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class ContentPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = Get.width;
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Peersoan',
              style: TextStyle(
                  color: AppColors().primary,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            //Input Form Field
            CustomTextField(
              width: width,
              icon: Icons.email,
              hint: 'Email',
            ),
            CustomTextField(
              width: width,
              icon: Icons.lock_rounded,
              hint: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: AppColors().white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: AppColors().primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(200, 40)))
          ],
        ),
      ),
    );
  }
}

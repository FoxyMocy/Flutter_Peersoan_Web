part of './components.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final IconData icon;
  final String hint;
  const CustomTextField(
      {required this.hint, required this.width, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width < 960
            ? 120
            : width < 1200
                ? 250
                : 300,
        vertical: 5,
      ),
      padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 6),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors().grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors().primary,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration.collapsed(
                hintText: hint,
              ),
              // validator: validate,
              // onChanged: onchange,
            ),
          ),
        ],
      ),
    );
  }
}

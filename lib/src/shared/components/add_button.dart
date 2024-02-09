// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:happye/src/imports.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.backgroundColor,
    this.primaryColor,
  }) : super(key: key);
  final String title;
  final Function() onTap;
  final Color? backgroundColor;
  final Color? primaryColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: backgroundColor ?? Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: primaryColor ?? Colors.white,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: primaryColor ?? Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

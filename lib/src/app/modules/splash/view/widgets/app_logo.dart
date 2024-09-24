// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppLogo extends StatefulWidget {
  const AppLogo({Key? key, required this.height, required this.width}) : super(key: key);

  final double height;
  final double width;
  @override
  State<AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  @override
  Widget build(BuildContext context) {
    const innerCirclePadding = 12.0;
    final logoTitleFontSize = widget.height * 0.16;
    final logoSubTitleFontSize = widget.height * 0.08;

    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: innerCirclePadding,
                        left: innerCirclePadding,
                        bottom: innerCirclePadding,
                      ),
                      child: Text(
                        'Ha',
                        style: TextStyle(
                          fontSize: logoTitleFontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'ppye',
                    style: TextStyle(
                      fontSize: logoTitleFontSize,
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Text(
                'Events',
                style: TextStyle(
                  fontSize: logoSubTitleFontSize,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

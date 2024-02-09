import 'package:flutter/material.dart';

class FrequentedEventsList extends StatelessWidget {
  const FrequentedEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height * 0.25,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (_, i) {
          return SizedBox(
            height: height * 0.25,
            width: width * 0.4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 15,
            ),
          );
        },
      ),
    );
  }
}

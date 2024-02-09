import 'package:flutter/material.dart';

class HomeEventsList extends StatelessWidget {
  const HomeEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height * 0.45,
      width: width,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (_, i) {
          return SizedBox(
            height: height * 0.25,
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 15,
              ),
            ),
          );
        },
      ),
    );
  }
}

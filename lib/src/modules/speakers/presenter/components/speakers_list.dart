import 'package:flutter/material.dart';

class SpeakersList extends StatelessWidget {
  const SpeakersList({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height* 0.6,
      width: width,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (_, i) {
          return SizedBox(
            height: height * 0.35,
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

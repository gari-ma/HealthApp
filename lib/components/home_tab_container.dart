import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/single_home_card.dart';

class HomeTab extends StatelessWidget {
  HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Center(
        child: Column(children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: exerciseTextRow(),
          ),
          SizedBox(
            height: 0.40 * MediaQuery.of(context).size.height - 2.4,
            child: SingleCard(),
          ) // infinite
        ]),
      ),
    );
  }
}

Row exerciseTextRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Exercises",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Icon(
        Icons.more_horiz,
        size: 30,
      ),
    ],
  );
}

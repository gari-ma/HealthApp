import 'package:flutter/material.dart';

import '../models/exercise_list_model.dart';

class SingleCard extends StatelessWidget {
  // ExercisesModel exercisesModel;
  SingleCard({
    super.key,
  });
  final List<ExercisesModel> exerciseList = [
    ExercisesModel(
        color: Colors.orange,
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.person),
    ExercisesModel(
        color: Colors.blue[700],
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.favorite),
    ExercisesModel(
        color: Colors.red,
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.card_giftcard),
    ExercisesModel(
        color: Colors.green,
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.agriculture),
    ExercisesModel(
        color: Colors.orange,
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.person),
    ExercisesModel(
        color: Colors.blue[700],
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.favorite),
    ExercisesModel(
        color: Colors.red,
        title: "Speaking Skills",
        subTitle: "16 exercises",
        icon: Icons.card_giftcard),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exerciseList.length,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.grey.shade200, width: 1.0)),
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: exerciseList.elementAt(index).color,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(exerciseList.elementAt(index).icon),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              exerciseList[index].title!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                exerciseList.elementAt(index).subTitle!,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

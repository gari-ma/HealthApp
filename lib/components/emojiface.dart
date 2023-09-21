import 'package:flutter/material.dart';

// class EmojiContainer {
//   String? emojicon;
//   String?  emojiName;
//   EmojiContainer({
//     required this.emojicon,
//     required this.emojiName,
//   });
// }

class SingleEmojiContainer extends StatelessWidget {
  final String emojiIcon;
  final String emojiName;
  SingleEmojiContainer(
      {super.key, required this.emojiIcon, required this.emojiName});
  // List<EmojiContainer> emojiitems = [
  //   EmojiContainer(emojicon:'😞', emojiName: "Happy"),
  //   EmojiContainer(emojicon:'😞', emojiName: "Happy"),
  //   EmojiContainer(emojicon:'😞', emojiName: "Happy"),
  //   EmojiContainer(emojicon:'😞', emojiName: "Happy"),
  //   EmojiContainer(emojicon:'😞', emojiName: "Happy"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue[700],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Text(emojiIcon, style: TextStyle(fontSize: 30.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            emojiName,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        )
      ],
    );
  }
}

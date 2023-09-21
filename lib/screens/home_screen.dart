import 'package:flutter/material.dart';

import '../components/emojiface.dart';
import '../components/home_tab_container.dart';
// import 'package:flutter_application_1/components/emojiface.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
      ]),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            topBar(),
            const SizedBox(height: 8, ),
            searchBar(),
            const SizedBox(height: 20),
            howYouFeelText(),
            const SizedBox(
              height: 20,
            ),
            fourEmojiFacesRow(),
            HomeTab(),
          ],
        ),
      ),
    );
  }

  Row fourEmojiFacesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SingleEmojiContainer(
          emojiIcon: '😞',
          emojiName: 'Sad',
        ),
        SingleEmojiContainer(
          emojiIcon: '🙂',
          emojiName: 'Fine',
        ),
        SingleEmojiContainer(
          emojiIcon: '😄',
          emojiName: 'Happy',
        ),
        SingleEmojiContainer(
          emojiIcon: '🤠',
          emojiName: 'Excellent',
        ),
      ],
    );
  }

  Container howYouFeelText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "How do you feel?",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[700],
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white70,
                size: 25,
              ),
            ),
            Text(
              "Search",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container topBar() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Garima!",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "19 Sep 2024",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white60,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue[700],
            ),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

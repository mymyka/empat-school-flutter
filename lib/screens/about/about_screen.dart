import 'package:app/shared/services/user_service.dart';
import 'package:app/shared/components/ui/user_card.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final UserService _userService = UserService();

  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var gestureDetector = GestureDetector(
      onTap: () {
        print("LOL");
      },
      child: UserCard(
        user: _userService.getUser(),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector,
                const Text(
                    'This is a simple app to demonstrate how to use Flutter !'),
              ],
            )));
  }
}

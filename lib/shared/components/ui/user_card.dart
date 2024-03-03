import 'package:app/shared/components/ui/avatar.dart';
import 'package:app/shared/types/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  final User _user;
  List<Color> colors = [
    const Color(0xff1f005c),
    const Color(0xff5b0060),
    const Color(0xff870160),
    const Color(0xffac255e),
    const Color(0xffca485c),
    const Color(0xffe16b5c),
    const Color(0xfff39060),
    const Color(0xffffb56b),
  ];

  UserCard({super.key, required User user}) : _user = user;

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.colors = widget.colors.reversed.toList();
          widget._user.thumbsUp = widget._user.thumbsUp + 1;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.colors,
            )),
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Avatar(widget._user.avatarUrl),
            const SizedBox(height: 10),
            Text(
              widget._user.name,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email, color: Colors.white, size: 10),
                const SizedBox(width: 5),
                Text(widget._user.email,
                    style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.telegram, color: Colors.white, size: 10),
                const SizedBox(width: 5),
                Text(widget._user.telegramId,
                    style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.thumb_up, color: Colors.white, size: 10),
                const SizedBox(width: 5),
                Text(widget._user.thumbsUp.toString(),
                    style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

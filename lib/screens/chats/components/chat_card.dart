import 'package:flutter/material.dart';
import '../../../constants.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.press,
  }) : super(key: key);

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
            ),
          ],
        ),
      ),
      ),
    );
  }
}

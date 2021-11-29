import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  get demeChatMessages => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}

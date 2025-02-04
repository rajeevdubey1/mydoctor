import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFFE1E1E2),
              ),
              child: const Text(
                "Hello, what i can do for you? you can book appointment directly",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
                decoration: const BoxDecoration(
                  color: Color(0xFF7165D6),
                ),
                child: const Text(
                "Hello doctor, are you there?",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

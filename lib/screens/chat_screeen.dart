import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydoctor/widgets/chat_sample.dart';

class ChatScreeen extends StatelessWidget {
  const ChatScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF7165D6),
          foregroundColor: Colors.white,
          leadingWidth: 30,
          title: const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                radius: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Dr. Doctor name',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.call,
                size: 26,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.video_call,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                size: 26,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 8),
        itemBuilder: (context, index) => const ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 2,
              color: Colors.black12,
            )
          ],
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width/1.6,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'type something',
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.send, size: 30, color: Color(0xFF7165D6),),)
          ],
        ),
      ),
    );
  }
}

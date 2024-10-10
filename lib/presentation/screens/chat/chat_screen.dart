import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://people.com/thmb/ZGPUfP4Fewh3m-iEu1OMmtceGNY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(704x359:706x361):format(webp)/Selena-Gomez-001-f5770cb5598747f4b78af8d4d1781cf4.jpg'),
          ),
        ),
        title: const Text('Mi❤️'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            // caja de mensaje
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage(widget.user.imageUrl),
            ),
            const SizedBox(width: 10.0),
            Text(
              widget.user.name,
              style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      // body: GestureDetector(
      //   onTap: () => FocusScope.of(context).unfocus(),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Container(
      //           decoration: const BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(30.0),
      //               topRight: Radius.circular(30.0),
      //             ),
      //           ),
      //           child: ClipRRect(
      //             borderRadius: const BorderRadius.only(
      //               topLeft: Radius.circular(30.0),
      //               topRight: Radius.circular(30.0),
      //             ),
      //             child: ListView.builder(
      //               reverse: true,
      //               padding: const EdgeInsets.only(top: 15.0),
      //               itemCount: messages.length,
      //               itemBuilder: (BuildContext context, int index) {
      //                 final Message message = messages[index];
      //                 final bool isMe = message.sender.id == currentUser.id;
      //                 return _buildMessage(message, isMe);
      //               },
      //             ),
      //           ),
      //         ),
      //       ),
      //       // _buildMessageComposer(),
      //     ],
      //   ),
      // ),
    );
  }
}

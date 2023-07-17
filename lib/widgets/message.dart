import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasechatapp/widgets/messagebubble.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});
  @override
  Widget build(BuildContext context) {
    final authUser = FirebaseAuth.instance.currentUser!;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('createdAt', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No messages available.'),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error has occurred.'),
          );
        }

        final messages = snapshot.data!.docs;
        return ListView.builder(
          reverse: true,
          padding: const EdgeInsets.only(bottom: 40, left: 13, right: 13),
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final chatMessage = messages[index].data();
            final nextChat =
                index + 1 < messages.length ? messages[index + 1].data() : null;
            final currentMessageUserId = chatMessage['userId'];
            final nextUserId = nextChat != null ? nextChat['userId'] : null;
            final nextUserSame = nextUserId == currentMessageUserId;
            if (nextUserSame) {
              return MessageBubble.next(
                  message: chatMessage['text'],
                  isMe: authUser.uid == currentMessageUserId);
            } else {
              return MessageBubble.first(
                  userImage: chatMessage['userImage'],
                  username: chatMessage['username'],
                  message: chatMessage['text'],
                  isMe: authUser.uid == currentMessageUserId);
            }
          },
        );
      },
    );
  }
}

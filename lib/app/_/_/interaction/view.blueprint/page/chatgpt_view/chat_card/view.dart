import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ChatCardView extends StatefulWidget {
  ChatCardView({
    super.key,
    required this.id,
    required this.message,
    required this.userId,
    required this.userName,
    required this.imageUrl,
    required this.createdAt,
  });

  String id;
  String message;
  String userId;
  String userName;
  String imageUrl;
  int createdAt;

  @override
  State<ChatCardView> createState() => StateChild();
}

class ChatCardViewState extends State<ChatCardView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 110,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: widget.userId == 'chatGPT'
                    ? const DecorationImage(
                        image: AssetImage("assets/view/chatgpt_view/chatgpt_logo.webp"),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: Colors.grey,
              ),
              child: widget.userId != 'chatGPT'
                  ? Center(
                      child: Text(
                        "S",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    )
                  : null),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.userName,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                widget.message,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ).padding(top: 5).expanded(),
        ],
      ).padding(horizontal: 20, vertical: 30),
    );
  }
}

main() async {
  return buildApp(
      appHome: ChatCardView(
    id: 'id',
    message: 'message',
    userId: 'userId',
    userName: 'userName',
    imageUrl: 'imageUrl',
    createdAt: 0,
  ).center());
}

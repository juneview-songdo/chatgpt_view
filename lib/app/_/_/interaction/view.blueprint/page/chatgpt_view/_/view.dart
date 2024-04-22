import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../appbar/view.dart';
import '../chat_card/view.dart';
import '../drawer/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff202123),
      appBar: AppbarView(),
      drawer: DrawerView(),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ChatCardView(
          id: '1',
          message: 'Hello, how can I help you?',
          userId: 'chatGPT',
          userName: 'ChatGPT',
          imageUrl: 'assets/chatgpt_logo.webp',
          createdAt: 1628180000,
        ),
        ChatCardView(
          id: '2',
          message: 'I need help with my computer',
          userId: 'user',
          userName: 'User',
          imageUrl: 'assets/user.webp',
          createdAt: 1628180000,
        ),
        ChatCardView(
          id: '3',
          message: 'Sure, what seems to be the problem?',
          userId: 'chatGPT',
          userName: 'ChatGPT',
          imageUrl: 'assets/chatgpt_logo.webp',
          createdAt: 1628180000,
        ),
      ]),
      floatingActionButton: FloatingActionButtonKit(),);
  }
}

main() async {
  return buildApp(appHome: NewView());
}
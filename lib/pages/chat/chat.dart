import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/widgets/chat/chat_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List messageList = [
    {
      'id': '1',
      'title': 'React Native CLI 会在命令行中输出应用程序的构建信息和启动信息。等待应用程序启动并在模拟器或设备上运行',
      'content':
          '请注意，使用模拟器 ID 运行 React Native 项目的具体步骤可能因使用的 React Native 版本和项目配置而有所不同。在运行项目时，你可以使用 --deviceId 选项指定设备 ID。例如：'
    },
    {
      'id': '2',
      'title': 'React Native CLI 会在命令行中输出应用程序的构建信息和启动信息。等待应用程序启动并在模拟器或设备上运行',
      'content':
          '请注意，使用模拟器 ID 运行 React Native 项目的具体步骤可能因使用的 React Native 版本和项目配置而有所不同。在运行项目时，你可以使用 --deviceId 选项指定设备 ID。例如：'
    },
    {
      'id': '3',
      'title': 'React Native CLI 会在命令行中输出应用程序的构建信息和启动信息。等待应用程序启动并在模拟器或设备上运行',
      'content':
          '请注意，使用模拟器 ID 运行 React Native 项目的具体步骤可能因使用的 React Native 版本和项目配置而有所不同。在运行项目时，你可以使用 --deviceId 选项指定设备 ID。例如：'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [ChatListWidget(messageList: messageList)],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    ));
  }
}

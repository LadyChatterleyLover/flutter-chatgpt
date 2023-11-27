import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/controller/baseController.dart';
import 'package:get/get.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  final BaseController _controller = Get.put(BaseController());
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.currentIndex,
      onTap: _controller.changeTab,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: '聊天',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_fire_department),
          label: '精彩',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: '学习',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: '我的',
        ),
      ],
    );
  }
}

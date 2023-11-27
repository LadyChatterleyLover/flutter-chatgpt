import 'package:flutter_chatgpt/pages/chat/chat.dart';
import 'package:flutter_chatgpt/pages/learn/learn.dart';
import 'package:flutter_chatgpt/pages/login/login.dart';
import 'package:flutter_chatgpt/pages/my/my.dart';
import 'package:flutter_chatgpt/pages/wonderful/wonderful.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String login = '/login';
  static const String chat = '/';
  static const String learn = '/learn';
  static const String wonderful = '/wonderful';
  static const String my = '/my';

  static final routes = [
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: chat, page: () => const ChatPage()),
    GetPage(name: learn, page: () => const LearnPage()),
    GetPage(name: wonderful, page: () => const WonderfulPage()),
    GetPage(name: my, page: () => const MyPage()),
  ];
}

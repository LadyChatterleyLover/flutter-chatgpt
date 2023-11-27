import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/api/index.dart';
import 'package:flutter_chatgpt/controller/baseController.dart';
import 'package:flutter_chatgpt/pages/chat/chat.dart';
import 'package:flutter_chatgpt/pages/learn/learn.dart';
import 'package:flutter_chatgpt/pages/login/login.dart';
import 'package:flutter_chatgpt/pages/my/my.dart';
import 'package:flutter_chatgpt/pages/wonderful/wonderful.dart';
import 'package:flutter_chatgpt/router/router.dart';
import 'package:flutter_chatgpt/utils/storage.dart';
import 'package:flutter_chatgpt/widgets/tabbar/tabbar.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final LocalStorage localStorage = LocalStorage();
  Get.put(localStorage);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final BaseController _baseController = Get.put(BaseController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: child,
        ),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      initialRoute: AppRoutes.chat,
      getPages: AppRoutes.routes,
      home: Scaffold(
        body: Obx(() {
          int currentIndex = _baseController.currentTabIndex.value;
          return IndexedStack(
            index: currentIndex,
            children: const [
              ChatPage(),
              WonderfulPage(),
              LearnPage(),
              MyPage(),
            ],
          );
        }),
        bottomNavigationBar: Obx(() {
          int currentIndex = _baseController.currentTabIndex.value;
          return TabbarWidget(
            currentIndex: currentIndex,
          );
        }),
      ),
    );
  }
}

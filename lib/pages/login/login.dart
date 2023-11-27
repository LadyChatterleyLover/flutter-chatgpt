import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/widgets/input/input_widget.dart';
import 'package:flutter_chatgpt/widgets/login_button/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginEnable = false;
  String username = '';
  String password = '';

  void checkInput() {
    bool enable = false;
    if (username.isNotEmpty && password.isNotEmpty) {
      enable = true;
    } else {
      enable = false;
    }
    setState(() {
      loginEnable = enable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg-robot.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.fromLTRB(15, 100, 15, 0),
                      child: const Text(
                        'ChatGPT',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InputWidget(
                      hintText: '请输入用户名',
                      onChanged: (val) {
                        setState(() {
                          username = val;
                        });
                        checkInput();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputWidget(
                      hintText: '请输密码',
                      obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                        checkInput();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: const Text(
                            '立即注册',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    LoginButtonWidget('登录', enable: loginEnable, onPressed: () {
                      debugPrint('username: $username');
                      debugPrint('password: $password');
                    })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

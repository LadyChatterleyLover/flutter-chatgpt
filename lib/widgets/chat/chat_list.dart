import 'package:flutter/material.dart';

class ChatListWidget extends StatefulWidget {
  final List messageList;
  const ChatListWidget({Key? key, required this.messageList}) : super(key: key);

  @override
  State<ChatListWidget> createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.messageList.isNotEmpty
        ? Column(
            children: widget.messageList.map((item) {
              return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://xsgames.co/randomusers/avatar.php?g=pixel&key=2',
                            width: 40,
                            height: 40,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        item['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const Text(
                                      '晚上9:30',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  item['content'],
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 1,
                            color: Colors.grey[200],
                          ))
                    ],
                  ));
            }).toList(),
          )
        : const CircularProgressIndicator();
  }
}

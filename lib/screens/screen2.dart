import 'package:flutter/material.dart';
import 'package:flutter_design_projec/constants.dart';

class MainScreen extends StatelessWidget {
  final List<Map<String, dynamic>> chatData = [
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
      "isTyping": false,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
      "isTyping": true,
    },
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Faza.png",
      "name": "Faza Dzikrulloh",
      "lastMessage": "Can you help me with new project...",
      "time": "14:30",
      "unreadCount": 2,
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    // Add more entries as needed
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'HALODEK',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 19, vertical: 14),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: kPrimaryColor,
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                tabs: const [
                  Tab(text: 'Chat'),
                  Tab(text: 'Status'),
                  Tab(text: 'Calls'),
                ],
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            buildChatTab(),
            buildStatusTab(),
            buildCallsTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  // Chat Tab
  Widget buildChatTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return chatWidget(Chat(
          profileImage: chatData[index]["profileImage"],
          name: chatData[index]["name"],
          lastMessage: chatData[index]["lastMessage"],
          time: chatData[index]["time"],
          unreadCount: chatData[index]["unreadCount"],
          seendMessage: '',
          sentedMessage: '',
        ));
      },
    );
  }

  // Status Tab
  Widget buildStatusTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.photo_camera, size: 50, color: Colors.grey),
          SizedBox(height: 10),
          Text("No recent updates",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }

  // Calls Tab
  Widget buildCallsTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call, size: 50, color: Colors.grey),
          SizedBox(height: 10),
          Text("No recent calls",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget chatWidget(Chat chat) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: GestureDetector(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat.profileImage),
            radius: 30,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      chat.isTyping ? "typing..." : chat.lastMessage,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle:
                            chat.isTyping ? FontStyle.italic : FontStyle.normal,
                        fontWeight: chat.unreadCount > 0
                            ? FontWeight.bold
                            : FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                chat.time,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (chat.unreadCount > 0)
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.orange[300],
                      child: Text(
                        chat.unreadCount.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  const SizedBox(width: 5),
                  messageStatusIcon(
                    chat.seendMessage.isNotEmpty ? Icons.done_all : Icons.done,
                    chat.seendMessage.isNotEmpty ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget messageStatusIcon(IconData icon, Color color) {
    return Icon(
      icon,
      color: color,
      size: 16,
    );
  }
}

class Chat {
  final String profileImage;
  final String name;
  final String lastMessage;
  final String time;
  final String seendMessage;
  final String sentedMessage;
  final int unreadCount;
  final bool isTyping;

  Chat({
    required this.profileImage,
    required this.name,
    required this.lastMessage,
    required this.time,
    this.seendMessage = '',
    this.sentedMessage = '',
    this.unreadCount = 0,
    this.isTyping = false,
  });
}

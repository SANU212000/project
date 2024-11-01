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
    },
    {
      "profileImage": "assets/images/Hatypo.png",
      "name": "Hatypo Studio",
      "lastMessage": "I think we should upgrade the social media...",
      "time": "14:00",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Zhofran.png",
      "name": "Zhofran A",
      "lastMessage": "I’ll check it later",
      "time": "13:40",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Vito.png",
      "name": "Vito Avry",
      "lastMessage": "Great work! Let's schedule it tomorrow.",
      "time": "Yesterday",
      "unreadCount": 1,
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
      "profileImage": "assets/images/Zhofran.png",
      "name": "Zhofran A",
      "lastMessage": "I’ll check it later",
      "time": "13:40",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Vito.png",
      "name": "Vito Avry",
      "lastMessage": "Great work! Let's schedule it tomorrow.",
      "time": "Yesterday",
      "unreadCount": 1,
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
      "profileImage": "assets/images/Zhofran.png",
      "name": "Zhofran A",
      "lastMessage": "I’ll check it later",
      "time": "13:40",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Vito.png",
      "name": "Vito Avry",
      "lastMessage": "Great work! Let's schedule it tomorrow.",
      "time": "Yesterday",
      "unreadCount": 1,
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
      "profileImage": "assets/images/Zhofran.png",
      "name": "Zhofran A",
      "lastMessage": "I’ll check it later",
      "time": "13:40",
      "unreadCount": 0,
    },
    {
      "profileImage": "assets/images/Vito.png",
      "name": "Vito Avry",
      "lastMessage": "Great work! Let's schedule it tomorrow.",
      "time": "Yesterday",
      "unreadCount": 1,
    },
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
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: chatData.length,
          itemBuilder: (context, index) {
            return ChatItem(
              profileImage: chatData[index]["profileImage"],
              name: chatData[index]["name"],
              lastMessage: chatData[index]["lastMessage"],
              time: chatData[index]["time"],
              unreadCount: chatData[index]["unreadCount"],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String profileImage;
  final String name;
  final String lastMessage;
  final String time;
  final int unreadCount;

  const ChatItem({
    super.key,
    required this.profileImage,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(profileImage),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        lastMessage,
        style: TextStyle(color: Colors.grey[600]),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: const TextStyle(color: Colors.grey),
          ),
          if (unreadCount > 0)
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                unreadCount.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}

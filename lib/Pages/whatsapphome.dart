// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'calls_page.dart';
import 'camera_page.dart';
import 'chats_page.dart';
import 'status_page.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  final List<Tab> appTabs = [
    Tab(
      icon: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.photo_camera),
      ),
    ),
    Tab(
      text: "CHAT",
    ),
    Tab(text: "STATUS"),
    Tab(
      text: "CALLS",
    )
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: appTabs.length, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 21),
          ),
          backgroundColor: Colors.teal.shade900,
          bottom: TabBar(
            tabs: appTabs,
            controller: _tabController,
            indicatorColor: Colors.white,
          ),
          actions: [
            Icon(
              Icons.search,
              size: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 25,
                ),
              ),
            ),
          ]),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

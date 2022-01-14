// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/model/chat_model.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].picture),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dummyData[index].name),
                      Text(
                        dummyData[index].time,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      )
                    ],
                  ),
                  subtitle: Container(
                    child: Text(dummyData[index].message),
                  ),
                )
              ],
            ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrOOkIqmj4jk6D5hCKSIuuJ6sbvFptfGbrmg&usqp=CAU"),
            ),
            title: Text(
              "My Status",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("Tap to add status update"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 10),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 170),
              Center(
                child: Text(
                  "No status to view",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

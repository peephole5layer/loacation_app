import 'package:flutter/material.dart';
import 'package:location_app/models/member.dart';
import 'package:location_app/screens/location_screens.dart';

class MemberListScreen extends StatelessWidget {
  final List<Member> members = [
    Member(name: 'kunal', id: 1),
    Member(name: 'Ram', id: 2),
    Member(name: 'Raghav', id: 3),
    Member(name: "rahul", id: 4),
    Member(name: 'krish',id: 5)
    // Add more members
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                    members[index].name[0], // First letter of the name
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                title: Text(
                  members[index].name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.location_on, color: Colors.blueAccent),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LocationScreen(member: members[index]),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

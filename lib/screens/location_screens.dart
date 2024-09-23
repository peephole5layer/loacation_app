import 'package:flutter/material.dart';
import 'package:location_app/models/member.dart';

class LocationScreen extends StatelessWidget {
  final Member member;

  LocationScreen({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${member.name}'s Location"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Simulating a map-like view for the current location
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 50),
                    SizedBox(height: 10),
                    Text(
                      'Current Location',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Latitude: 24.7136, Longitude: 46.6753', // Dummy location
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // List of visited locations in a timeline view
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Visited Locations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5, // Simulating 5 visited locations
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.location_history, color: Colors.blueAccent),
                          title: Text(
                            'Location ${index + 1}',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('Visited at: 12:${index + 5} PM'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Route details between two locations
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Route Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Start Location: Location 1', style: TextStyle(fontSize: 16)),
                          Text('Stop Location: Location 5', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Total KM: 12.5', style: TextStyle(fontSize: 16)),
                          Text('Duration: 1hr 15min', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

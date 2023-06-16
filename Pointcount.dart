import 'package:flutter/material.dart';

class YourScreen extends StatefulWidget {
  @override
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  List<String> recommendedActivities = [
    'Meditation',
    'Exercise',
    'Reading',
    'Listening Podcast',
    'Jogging',
  ];

  List<String> selectedActivities = List.filled(4, '');
  List<String> selectedPoints = List.filled(4, '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Other Widgets...

            // Activities
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Activities:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildActivityRow(0),
                  _buildActivityRow(1),
                  _buildActivityRow(2),
                  _buildActivityRow(3),
                ],
              ),
            ),

            // Other Widgets...
          ],
        ),
      ),
    );
  }

  Widget _buildActivityRow(int index) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: GestureDetector(
              onTap: () {
                _showRecommendedActivitiesDialog(index);
              },
              child: Text(
                selectedActivities[index].isEmpty
                    ? 'Choose an activity'
                    : selectedActivities[index],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  selectedPoints[index] = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Write score',
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showRecommendedActivitiesDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Recommended Activities'),
          content: SingleChildScrollView(
            child: ListBody(
              children: recommendedActivities
                  .map(
                    (activity) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedActivities[index] = activity;
                    });
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    title: Text(activity),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:workos_english/screens/widgets/drawer_widget.dart';

class UrgentHelpScreen extends StatefulWidget {
  @override
  State<UrgentHelpScreen> createState() => _UrgentHelpScreenState();
}

class _UrgentHelpScreenState extends State<UrgentHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // //back button
        // leading: IconButton(
        //   icon: new Icon(Icons.arrow_back, color: Colors.grey[600]),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Need Urgent Help?',
          style: TextStyle(color: Colors.pink),
        ),
      ),
    );
  }
}

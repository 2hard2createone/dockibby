import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/screens/widgets/drawer_widget.dart';
import 'package:workos_english/screens/widgets/groups_widget.dart';
import 'package:workos_english/screens/widgets/select_widget.dart';

class AllGroupScreen extends StatefulWidget {
  @override
  State<AllGroupScreen> createState() => _AllGroupScreenState();
}

class _AllGroupScreenState extends State<AllGroupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'My Groups',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return GroupsWidget();
      }),
    );
  }
}

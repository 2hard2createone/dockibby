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
      // drawer: DrawerWidget(),
      appBar: AppBar(
        // iconTheme: IconThemeData(
        //   color: Colors.black,
        // ),
        //back button
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.grey[600]),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Need Urgent Help?',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: SingleChildScrollView(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 2,
              right: 2,
            ),
            child: Column(
              children: [
                _threeButtonsRow(
                  text1: 'Physically Unwell',
                  text2: 'Fall',
                  text3: 'Physical Assitance',
                  color1: Colors.brown.shade400,
                  color2: Colors.brown.shade400,
                  color3: Colors.brown.shade400,
                  fontSize1: 18,
                  fontSize2: 25,
                  fontSize3: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                _threeButtonsRow(
                  text1: 'Pet Unwell',
                  text2: 'Device Not Working',
                  text3: 'Power Out',
                  color1: Colors.brown.shade400,
                  color2: Colors.brown.shade400,
                  color3: Colors.brown.shade400,
                  fontSize1: 20,
                  fontSize2: 20,
                  fontSize3: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                _threeButtonsRow(
                  text1: 'Need To Talk',
                  text2: 'Alone',
                  text3: 'Others',
                  color1: Colors.brown.shade400,
                  color2: Colors.brown.shade400,
                  color3: Colors.brown.shade400,
                  fontSize1: 20,
                  fontSize2: 23,
                  fontSize3: 23,
                ),
                SizedBox(
                  height: 5,
                ),
                _threeButtonsRow(
                  text1: 'COVID',
                  text2: 'Lost',
                  text3: 'Other Emergency',
                  color1: Colors.red.shade600,
                  color2: Colors.red.shade600,
                  color3: Colors.red.shade600,
                  fontSize1: 28,
                  fontSize2: 35,
                  fontSize3: 17,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _threeButtonsRow({
    required String text1,
    required String text2,
    required String text3,
    required Color color1,
    required Color color2,
    required Color color3,
    required double fontSize1,
    required double fontSize2,
    required double fontSize3,
  }) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 120,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: color1),
              child: Text(
                text1,
                style: TextStyle(fontSize: fontSize1),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: SizedBox(
            height: 120,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: color2),
              child: Text(
                text2,
                style: TextStyle(fontSize: fontSize2),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: SizedBox(
            height: 120,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: color3),
              child: Text(
                text3,
                style: TextStyle(fontSize: fontSize3),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';

class DrawerWidget extends StatelessWidget {
  Constants _constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            //decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Flexible(
                  child: Image.asset('assets/images/ldk_icon2.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Text(
                    'DocKibby',
                    style: TextStyle(
                        color: Constants.darkBlue,
                        fontSize: 20,
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

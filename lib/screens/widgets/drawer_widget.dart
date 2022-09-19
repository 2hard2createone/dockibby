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
            decoration: BoxDecoration(color: Colors.white),
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
          SizedBox(
            height: 20,
          ),
          _listTiles(
              label: 'Support History',
              fct: () {},
              icon: Icons.history_outlined),
          _listTiles(
              label: 'My Supporters', fct: () {}, icon: Icons.people_outline),
          _listTiles(label: 'Settings', fct: () {}, icon: Icons.settings),
          SizedBox(
            height: 120,
          ),
          Divider(
            thickness: 1,
          ),
          _listTiles(label: 'Log out', fct: () {}, icon: Icons.logout),
        ],
      ),
    );
  }

  Widget _listTiles(
      {required String label, required Function fct, required IconData icon}) {
    return ListTile(
      onTap: () {
        fct();
      },
      leading: Icon(
        icon,
        color: Constants.darkBlue,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Constants.darkBlue,
          fontSize: 20,
          //fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

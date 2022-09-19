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
          _listTiles(
              label: 'Log out',
              fct: () {
                _logout(context);
              },
              icon: Icons.logout),
        ],
      ),
    );
  }

  void _logout(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/7756/7756285.png', //<a href="https://www.flaticon.com/free-icons/logout" title="logout icons">Logout icons created by IYAHICON - Flaticon</a>
                    height: 20,
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                      color: Constants.darkBlue,
                      fontSize: 19,
                      //fontStyle: FontStyle.italic,),
                    ),
                  ),
                ),
              ],
            ),
            content: Text(
              'Do you want to sign out?',
              style: TextStyle(
                color: Constants.darkBlue,
                fontSize: 16,
                //fontStyle: FontStyle.italic,),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
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

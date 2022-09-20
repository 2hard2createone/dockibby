import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/inner_screens/askSupport.dart';
import 'package:workos_english/screens/select.dart';

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
                  height: 10,
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
            height: 10,
          ),
          _listTiles(
              label: 'Ask for Support',
              fct: () {
                _navigateToAskForSupportScreen(context);
              },
              icon: Icons.handshake_rounded),
          _listTiles(
              label: 'Support History',
              fct: () {
                _navigateToSupportHistoryScreen(context);
              },
              icon: Icons.history_outlined),
          _listTiles(
              label: 'My Supporters', fct: () {}, icon: Icons.people_outline),
          _listTiles(label: 'Settings', fct: () {}, icon: Icons.settings),
          SizedBox(
            height: 80,
          ),
          //Ask Help
          Container(
            color: Colors.red,
            height: 80,
            alignment: Alignment.center,
            child: ListTile(
              //tileColor: Colors.red,
              onTap: () {},
              leading: Icon(
                Icons.local_hospital,
                size: 60,
                color: Colors.white,
              ),
              title: Text(
                'SOS\u{00A0}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  //fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2,
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

  void _navigateToAskForSupportScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AskForSupport(),
      ),
    );
  }

  void _navigateToSupportHistoryScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => selectScreen(),
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

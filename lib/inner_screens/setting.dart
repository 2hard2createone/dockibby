import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/main.dart';
import 'package:workos_english/screens/widgets/drawer_widget.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var _titleTextStyle = TextStyle(
    fontSize: 21,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  var _contentTextStyle = TextStyle(
    color: Constants.darkBlue,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Constants.darkBlue),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Card(
              margin: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Subtitle / Description',
                      style: _contentTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Contact Info',
                      style: _titleTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: userInfo(
                      title: 'Email: ',
                      content: '103146619@student.swin.edu.au',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: userInfo(
                      title: 'Phone number: ',
                      content: '0422013324',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _contactBy(
                        color: Colors.green,
                        fct: () {},
                        //icon: Icons.whatsapp_outlined,
                        icon: Icons.message_outlined,
                      ),
                      //Spacer(),
                      _contactBy(
                        color: Colors.red,
                        fct: () {},
                        icon: Icons.mail_outlined,
                      ),
                      //Spacer(),
                      _contactBy(
                        color: Colors.purple,
                        fct: () {},
                        icon: Icons.call_outlined,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: MaterialButton(
                        onPressed: () {
                          _logout(context);
                        },
                        color: Colors.pink.shade700,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Log out',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.26,
                  height: size.width * 0.26,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 8,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'), //<a href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by kmg design - Flaticon</a>'
                        fit: BoxFit.fill,
                      )),
                )
              ],
            )
          ],
        ),
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

  Widget userInfo({required String title, required String content}) {
    return Row(
      children: [
        Text(
          title,
          style: _titleTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            content,
            style: _contentTextStyle,
          ),
        ),
      ],
    );
  }

  Widget _contactBy(
      {required Color color, required Function fct, required IconData icon}) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 23,
      child: CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white,
        child: IconButton(
          icon: Icon(
            icon,
            color: color,
          ),
          onPressed: () {
            fct();
          },
        ),
      ),
    );
  }
}

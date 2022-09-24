import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/screens/urgent_help.dart';
import 'package:workos_english/screens/widgets/drawer_widget.dart';
import 'package:workos_english/screens/widgets/select_widget.dart';

class selectScreen extends StatefulWidget {
  @override
  State<selectScreen> createState() => _selectScreenState();
}

class _selectScreenState extends State<selectScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // leading: Builder(
        //   builder: (ctx) {
        //     return IconButton(
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         Scaffold.of(ctx).openDrawer();
        //       },
        //     );
        //   },
        // ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Support History',
          style: TextStyle(color: Colors.pink),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showHistoryCategoriesDialog(size: size);
            },
            icon: Icon(
              Icons.filter_list_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(itemBuilder: (BuildContext context, int index) {
            return SelectWidget();
          }),
          //bottom button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              margin: const EdgeInsets.all(0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _navigateToUrgentHelpScreen(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                ),
                child: Wrap(
                  children: <Widget>[
                    Icon(
                      Icons.warning_rounded,
                      size: 30,
                    ),
                    const Text(
                      ' Need Urgent Help?',
                      style: TextStyle(
                        fontSize: 29,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showHistoryCategoriesDialog({required Size size}) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text(
              'Category',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink.shade800,
              ),
            ),
            content: Container(
              width: size.width * 0.7,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Constants.workCategoryList.length,
                  itemBuilder: (ctxx, index) {
                    return InkWell(
                      onTap: () {
                        print(
                            'workCategoryList[index], ${Constants.workCategoryList[index]}');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            color: Colors.red.shade200,
                          ),
                          //SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Constants.workCategoryList[index],
                              style: TextStyle(
                                color: Constants.darkBlue,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('Clear'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: Text('Close'),
              ),
            ],
          );
        });
  }

  void _navigateToUrgentHelpScreen(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UrgentHelpScreen(),
      ),
    );
  }
}

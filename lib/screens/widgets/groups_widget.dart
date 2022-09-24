import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';

class GroupsWidget extends StatefulWidget {
  @override
  State<GroupsWidget> createState() => _GroupsWidgetState();
}

class _GroupsWidgetState extends State<GroupsWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        onTap: () {},
        //onLongPress: _deleteDialog,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
              ),
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 20,
            child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'), //<a href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by kmg design - Flaticon</a>
          ),
        ),
        title: Text(
          'Supporter',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Constants.darkBlue,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.linear_scale_outlined,
              color: Colors.pink.shade800,
            ),
            Text(
              'Subtitle/phone number',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Colors.pink.shade800,
          ),
        ),
      ),
    );
  }

  // _deleteDialog() {
  //   showDialog(
  //       context: context,
  //       builder: (ctx) {
  //         return AlertDialog(
  //           actions: [
  //             TextButton(
  //               onPressed: () {},
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(
  //                     Icons.delete,
  //                     color: Colors.red,
  //                   ),
  //                   Text(
  //                     'Delete',
  //                     style: TextStyle(color: Colors.red),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ],
  //         );
  //       });
  // }
}

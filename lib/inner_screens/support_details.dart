import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/screens/widgets/comment_widget.dart';

class SupportDetailsScreen extends StatefulWidget {
  @override
  State<SupportDetailsScreen> createState() => _SupportDetailsScreenState();
}

class _SupportDetailsScreenState extends State<SupportDetailsScreen> {
  var _textstyle = TextStyle(
    color: Constants.darkBlue,
    fontSize: 13,
    fontWeight: FontWeight.normal,
  );
  var _titlestyle = TextStyle(
    color: Constants.darkBlue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  TextEditingController _commentController = TextEditingController();
  bool _isCommenting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.grey[600]),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Support title',
            style: TextStyle(
                color: Constants.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Supported by ',
                          style: TextStyle(
                              color: Constants.darkBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.blue.shade700,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'), //<a href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by kmg design - Flaticon</a>
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Supporter\'s name',
                              style: _textstyle,
                            ),
                            Text(
                              'Supporter\'s description',
                              style: _textstyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    dividerwidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Claimed on:',
                          style: _titlestyle,
                        ),
                        Text(
                          '24/09/2022',
                          style: TextStyle(
                              color: Constants.darkBlue,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Requested on:',
                          style: _titlestyle,
                        ),
                        Text(
                          '4/10/2022',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    dividerwidget(),
                    Text(
                      'Request Status: ',
                      style: _titlestyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        // Text(
                        //   'Pending',
                        //   style: TextStyle(
                        //       fontStyle: FontStyle.italic,
                        //       decoration: TextDecoration.underline,
                        //       color: Constants.darkBlue,
                        //       fontWeight: FontWeight.normal,
                        //       fontSize: 18),
                        // ),
                        // Icon(
                        //   Icons.timelapse,
                        //   color: Colors.orange,
                        // ),
                        // SizedBox(
                        //   width: 25,
                        // ),
                        // Text(
                        //   'Accepted',
                        //   style: TextStyle(
                        //       fontStyle: FontStyle.italic,
                        //       decoration: TextDecoration.underline,
                        //       color: Constants.darkBlue,
                        //       fontWeight: FontWeight.normal,
                        //       fontSize: 18),
                        // ),
                        // Icon(
                        //   Icons.pending,
                        //   color: Colors.green,
                        // ),
                        // SizedBox(
                        //   width: 25,
                        // ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Incomplete',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                                color: Constants.darkBlue,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
                        Opacity(
                          opacity: 0,
                          child: Icon(
                            Icons.check_box,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Complete',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                                color: Constants.darkBlue,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ),
                        Opacity(
                          opacity: 1,
                          child: Icon(
                            Icons.check_box,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    dividerwidget(),
                    Text(
                      'Description',
                      style: _titlestyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'description',
                      style: _textstyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedSwitcher(
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      child: _isCommenting
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: TextField(
                                    controller: _commentController,
                                    style: TextStyle(color: Constants.darkBlue),
                                    maxLength: 20,
                                    keyboardType: TextInputType.text,
                                    maxLines: 6,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.pink),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.pink.shade700,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Text(
                                          'Post',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _isCommenting = !_isCommenting;
                                        });
                                      },
                                      child: Text('Cancel'),
                                    ),
                                  ],
                                ))
                              ],
                            )
                          : Center(
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _isCommenting = !_isCommenting;
                                  });
                                },
                                color: Colors.pink.shade700,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  child: Text(
                                    'Add a comment',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CommentWidget();
                        },
                        separatorBuilder: (context, index) {
                          return Divider(thickness: 1);
                        },
                        itemCount: 15),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget dividerwidget() {
    return Column(
      children: [
        SizedBox(height: 10),
        Divider(thickness: 1),
        SizedBox(height: 10),
      ],
    );
  }
}

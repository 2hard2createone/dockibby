import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:workos_english/constants/constants.dart';
import 'package:workos_english/screens/widgets/drawer_widget.dart';

class AskForSupport extends StatefulWidget {
  @override
  State<AskForSupport> createState() => _AskForSupportState();
}

class _AskForSupportState extends State<AskForSupport> {
  TextEditingController _SupportCategoryController =
      TextEditingController(text: 'Select a group');
  TextEditingController _SupportTitleController = TextEditingController();
  TextEditingController _SupportDescriptionController = TextEditingController();
  TextEditingController _DateTimeController =
      TextEditingController(text: 'Select preferred date and time');

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _SupportCategoryController.dispose();
    _SupportTitleController.dispose();
    _SupportDescriptionController.dispose();
    _DateTimeController.dispose();
  }

  void _uploadForm() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      print('it is valid');
    } else {
      print('it is not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Constants.darkBlue),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(7),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ask for Support?',
                      style: TextStyle(
                        color: Constants.darkBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Support Title
                        _textTitles(label: 'Support Title*'),
                        _textFormField(
                            valueKey: 'SupportTitle',
                            controller: _SupportTitleController,
                            enabled: true,
                            fct: () {},
                            maxLength: 100),
                        //Support Description
                        _textTitles(label: 'Support Description*'),
                        _textFormField(
                            valueKey: 'SupportDescription',
                            controller: _SupportDescriptionController,
                            enabled: true,
                            fct: () {},
                            maxLength: 1000),
                        //Support Category
                        _textTitles(label: 'Support Groups*'),
                        _textFormField(
                            valueKey: 'SupportCategory',
                            controller: _SupportCategoryController,
                            enabled: false,
                            fct: () {
                              //_showSupportGroupCategoriesDialog(size: size);
                            },
                            maxLength: 100),
                        //Support Date and Time
                        _textTitles(label: 'Select Date and Time*'),
                        _textFormField(
                            valueKey: 'DateTime',
                            controller: _DateTimeController,
                            enabled: false,
                            fct: () {},
                            maxLength: 100),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: MaterialButton(
                      onPressed: _uploadForm,
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
                              Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.file_upload_outlined,
                                color: Colors.white,
                              ),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFormField({
    required String valueKey,
    required TextEditingController controller,
    required bool enabled,
    required Function fct,
    required int maxLength,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          fct();
        },
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Value is missing";
            }
            return null;
          },
          controller: controller,
          enabled: enabled,
          key: ValueKey(valueKey),
          // initialValue: 'hello',
          style: TextStyle(color: Constants.darkBlue),
          maxLines: valueKey == 'SupportDescription' ? 3 : 1,
          maxLength: maxLength,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.pink),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }

  // _showSupportGroupCategoriesDialog({required Size size}) {
  //   showDialog(
  //       context: context,
  //       builder: (ctx) {
  //         return AlertDialog(
  //           title: Text(
  //             'Category',
  //             style: TextStyle(
  //               fontSize: 20,
  //               color: Colors.pink.shade800,
  //             ),
  //           ),
  //           content: Container(
  //             width: size.width * 0.7,
  //             child: ListView.builder(
  //                 shrinkWrap: true,
  //                 itemCount: Constants.supportGroupCategoryList.length,
  //                 itemBuilder: (ctxx, index) {
  //                   return InkWell(
  //                     onTap: () {
  //                       print(
  //                           'supportGroupCategoryList[index], ${Constants.supportGroupCategoryList[index]}');
  //                     },
  //                     child: Row(
  //                       children: [
  //                         Icon(
  //                           Icons.check_circle_rounded,
  //                           color: Colors.red.shade200,
  //                         ),
  //                         //SizedBox(width: 10,),
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Text(
  //                             Constants.supportGroupCategoryList[index],
  //                             style: TextStyle(
  //                               color: Constants.darkBlue,
  //                               fontSize: 18,
  //                               fontStyle: FontStyle.italic,
  //                             ),
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                   );
  //                 }),
  //           ),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.canPop(context) ? Navigator.pop(context) : null;
  //               },
  //               child: Text('Close'),
  //             ),
  //           ],
  //         );
  //       });
  // }

  Widget _textTitles({required String label}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.pink[800],
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

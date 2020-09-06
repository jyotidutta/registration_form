// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Registrationform extends StatefulWidget {
  @override
  _RegistrationformState createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  String gender;
  List<String> cities = [
    'janakpur',
    'biratnagar',
    'narayanghat',
    'pokhara',
    'kathamandu',
  ];
  String selectedcity;
  bool flutter = false;
  bool webdesign = false;
  bool flag = false;
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registartion form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: [
                //fullname
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Passwor',
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (showpassword == false) {
                              setState(() {});
                              // ignore: unnecessary_statements
                              // ignore: unnecessary_statements
                              // ignore: unnecessary_statements
                              showpassword == true;
                            } else {
                              setState(() {});
                              showpassword = false;
                            }
                          },
                          icon: Icon(Icons.remove_red_eye)),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(5)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ADDRESS',
                    prefixIcon: Icon(Icons.home),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: showpassword,
                  maxLines: 5,
                ),
                ListTile(
                  title: Text("Gender"),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Male"),
                    Radio(
                      value: 'male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Female"),
                    Radio(
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(height: 10),
                DropdownButton<String>(
                  isExpanded: true,
                  value: selectedcity,
                  hint: Text("select city"),
                  items: cities.map((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String value) {
                    setState(() {
                      selectedcity = value;
                    });
                  },
                ),
                ListTile(
                  title: Text("select course"),
                ),
                Row(
                  children: [
                    Text("flutter"),
                    Checkbox(
                        activeColor: Colors.red,
                        value: flutter,
                        onChanged: (bool value) {
                          setState(() {
                            flutter = value;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Text("webdesing"),
                    Checkbox(
                        activeColor: Colors.red,
                        value: flutter,
                        onChanged: (bool value) {
                          setState(() {
                            flutter = value;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Text("Are you active"),
                    Switch(
                        activeColor: Colors.red,
                        value: flag,
                        onChanged: (bool value) {
                          setState(() {
                            flag = value;
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(onPressed: () {}, child: Text("submit")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

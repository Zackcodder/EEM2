// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unused_field, prefer_final_fields, body_might_complete_normally_nullable, unused_local_variable, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:eem/home.dart';


// My own package



class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // late SharedPreferences preferences;
  bool Loading = false;

  bool isLogedin = false;

  var _auth;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

         Container(
           color: Colors.blueGrey[900],
            margin: EdgeInsets.only(top: 0.5),
            child: Center(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: ListView(
                    children: [
                      
                      // To show the title of the app

                      Padding(padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
                      child: Text('Expense Manager', 
                      style: TextStyle(color: Colors.white, 
                      fontWeight: FontWeight.bold,
                       fontSize: 28),),
                      ),

                      Divider(color: Colors.blue, height: 20.0, thickness: 5.0,),

                      //Request for Username
                       Padding(padding: const EdgeInsets.only(left: 30.0, top: 40.0),
                      child: Text('Username',
                      style: TextStyle(color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey.withOpacity(0.5),

                          child: TextFormField(
                            controller: _usernameTextController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                RegExp regex = RegExp('pattern');
                                if (!regex.hasMatch(value)) {
                                  return 'Please enter a valid email';
                                } else {
                                  return null;
                                }
                              }
                            },
                          ),
                        ),
                      ),

                       Padding(padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                      child: Text('Password',
                      style: TextStyle(color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),),

                      //Password
                      Padding(
                       padding: const EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey.withOpacity(0.5),

                          child: TextFormField(
                            controller: _passwordTextController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.remove_red_eye),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Field cannot be empty";
                              } else if (value.length < 6) {
                                return "Password must be at least 6 characters long";
                              }
                            },
                          ),
                        ),
                      ),

                      //Signin Button
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 200.0, 30.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color.fromARGB(255, 20, 118, 197).withOpacity(1.0),
                          elevation: 10.0,
                          child: MaterialButton(
                            onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
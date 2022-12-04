import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tabbar/NavPages/HomePage/Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Sign In ",
          style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 80,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  decoration: InputDecoration(
                    hintText: 'Username or Email',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusColor: Colors.green,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(bottom: 10),
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusColor: Colors.green,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(bottom: 10),
                    filled: true,
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                    ),
                    child: Text('Sign In'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Home');
                    },
                  ),
                ),
                Center(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 20, right: 5),
                          child: Divider(
                            color: Colors.grey,
                            height: 10,
                            thickness: 2,
                          )),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 5, right: 20.0),
                          child: Divider(
                            thickness: 2,
                            color: Colors.grey,
                            height: 10,
                          )),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('f is clicked');
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff3b5998)),
                          child: Center(
                              child: Text(
                            'f',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          print('g is clicked');
                        },
                        child: Image.asset(
                          'lib/assets/images/google.png',
                          width: 55,
                          height: 55,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    TextButton(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUpPage');
                      },
                    ),
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

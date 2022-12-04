import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Sign Up ",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 45,),
                TextField(
                  maxLength: 30,
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  decoration: InputDecoration(
                    hintText: 'Username',
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
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
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
                SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, paste: true, selectAll: true),
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                SizedBox(height: 50,),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                    ),
                    child: Text('Sign Up'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Home');
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    TextButton(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                )

              ],
            ),
          ),
        ),

    );
  }
}

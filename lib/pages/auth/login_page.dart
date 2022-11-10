import 'dart:html';

import 'package:chat_app/pages/auth/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email="";
  String password='';
  final passwordEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   final w= MediaQuery.of(context).size.width;
   final h= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Amigos',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.orange),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login now to see what are they talking',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:h*0.5,
                    decoration: BoxDecoration(
                     image: DecorationImage(image:AssetImage('assets/images/orange.jpg'))
                      
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  
                  decoration: InputDecoration(
                  
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.orange
                    )
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.orange
                    ),
                    prefixIconColor: Colors.orange,
                    prefixIcon: IconTheme(data: IconThemeData(
            color: Colors.orange
          ), child: Icon(Icons.email,))
        ),
        onChanged: ((value) {
          setState(() {
            email=value;
          });
        }),
      
        validator: ((value) {
          return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)?null:"please enter valid email";
        }),
            ),
                  ),
                
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                    controller: passwordEditingController,
                      style: TextStyle(
                    color: Colors.white
                  ),
                decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.orange
                    )
                    ),
                    hintText: "Password",
                      hintStyle: TextStyle(
                      color: Colors.orange
                    ),
                    prefixIconColor: Colors.orange,
                    prefixIcon: IconTheme(data: IconThemeData(
            color: Colors.orange
          ), child: Icon(Icons.password,))
        ),
        validator: (value) {
          if(value!.length<6){
              return 'password length must be atleast 6 characters';
          }else {
            return null;
          }
        },
        onChanged: (value) {
          setState(() {
            password=value;
          });
        },
                ),
                   ),
                   SizedBox(
                    width: w*0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                      onPressed:(){},
                     child: Text('Sign In')),
                   ),
                 SizedBox(height: 10,),
                 Text.rich(TextSpan(

                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                  children:<TextSpan>[
                    TextSpan(
                      text: 'Register here',
                      style: TextStyle(
                    color: Colors.orange,
                  ),
                  recognizer: TapGestureRecognizer()..onTap=() {
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => RegisterPage())));
                  }
                    )
                  ]
                 ))
              ],
            )),
      ),
    );
  }
}

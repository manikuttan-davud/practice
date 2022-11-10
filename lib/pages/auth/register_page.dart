import 'package:chat_app/pages/auth/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
 
  String email="";
  String password="";
  String user="";
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
                    'Create your account now to chat and explore',
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
                    hintText: "Full Name",
                      hintStyle: TextStyle(
                      color: Colors.orange
                    ),
                    prefixIconColor: Colors.orange,
                    prefixIcon: IconTheme(data: IconThemeData(
            color: Colors.black
          ), child: Icon(Icons.filter,))
        ),
        onChanged: ((value) {
          setState(() {
            user=value;

          });
        }),
        validator: ((value) {
          if(value!.isNotEmpty){
               return null;
          }else {
            return "Name cannot be empty";
          }
        }),
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
                     child: Text('Register')),
                   ),
                 SizedBox(height: 10,),
                 Text.rich(TextSpan(

                  text: "Already have an account? ",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                  children:<TextSpan>[
                    TextSpan(
                      text: 'Login here',
                      style: TextStyle(
                    color: Colors.orange,
                  ),
                  recognizer: TapGestureRecognizer()..onTap=() {
                    Navigator.of(context).pop(MaterialPageRoute(builder:((context) => LoginPage()) ));
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

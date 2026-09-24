import 'package:flutter/material.dart';
import 'package:packages/data/local/db_helper.dart';

import 'jazz.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var emails = TextEditingController();
  var passwords = TextEditingController();

  Future<void> _loginuser() async{
    final email=emails.text.trim();
    final password=passwords.text.trim();

    if(email.isEmpty || password.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Please fill all the fields"))
      );
      return;
    }
    final user=await DataBaseHelper.instance.getuseremailandpassword(email,password);

    if(user!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> JazzScreen()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Invalid email or password")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0C3FC), Color(0xFFFFD6E8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              padding: const EdgeInsets.all(24),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Login Page",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),

                    /// Email Field
                    TextField(
                      controller: emails,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        prefixIcon: Icon(Icons.email),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    /// Password Field
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwords,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        prefixIcon: Icon(Icons.lock),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    /// Login Button
                    ElevatedButton(
                      onPressed: _loginuser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Login", style: TextStyle(fontSize: 16)),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

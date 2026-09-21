import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;

            if (width < 600) {
              return _mobileview(constraints);
            } else {
              return _desktopviewsignup(context);
            }
          },
        ),
      ),
    );
  }
}

Widget _mobileview(BoxConstraints constraints) {
  return SafeArea(
    //child: SingleChildScrollView(
    child: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CashPay",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Create Account",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                'Start managing your finances with precison and security',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                'Full Name',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Create Password',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Password strength',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black, thickness: 4)),
                  SizedBox(width: 10),
                  //Text('Strong'),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.black, thickness: 4)),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.black, thickness: 4)),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.black, thickness: 4)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  //heckbox(),
                  Text('I agree to the terms and conditions'),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    ),
  );
}

Widget _desktopviewsignup(BuildContext context) {
  return Placeholder();
}

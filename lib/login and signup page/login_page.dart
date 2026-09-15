import 'package:flutter/material.dart';
import 'package:flutter_shaders_ui/flutter_shaders_ui.dart';
import 'package:animate_text/animate_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:glow_effects/glow_effects.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? rememberMe = false;
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          if (width < 600) {
            return _mobileviewsignup(context);
          } else {
            return _desktopviewsignup(context);
          }
        },
      ),
    );
  }

  Widget _mobileviewsignup(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // SizedBox(height: h * 0.01),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.asset(
                        'images/cashpay.png',
                        height: h * 0.2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: w * 0.05,
                        ),
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: AnimateText(
                            "Cash Pay",
                            style: TextStyle(
                              fontSize: w * 0.10,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900,
                            ),
                            type: AnimateTextType.bottomToTop,
                          ),
                        ),
                        subtitle: Text(
                          "Secure. Seamless. Instant.",
                          style: TextStyle(
                            fontSize: w * 0.05,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email or Phone Number",
                      hintText: "Email or Phone Number",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      Checkbox(
                        // tristate: true,
                        value: rememberMe,
                        onChanged: (bool? newValue) {
                          setState(() {
                            rememberMe = newValue;
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: w * 0.12),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  SizedBox(
                    width: double.infinity,
                    child:ElevatedButton.icon(
                      onPressed: () {
                        // handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade700,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: h * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      iconAlignment: IconAlignment.end,
                      label: Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      icon: Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          size: w * 0.07,
                        ),
                      ),
                    )
                  ),
                  SizedBox(height: h * 0.03),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.black, thickness: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or continue with"),
                        ),
                        Expanded(
                          child: Divider(color: Colors.black, thickness: 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: h * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.green,
                        size: w * 0.07,
                      ),
                      label: Text(
                        "Cash Pay",
                        style: TextStyle(fontSize: w * 0.045),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: h * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.account_balance, size: w * 0.07),
                      label: Text(
                        "Bank Link",
                        style: TextStyle(fontSize: w * 0.045),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(fontSize: w * 0.045),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _desktopviewsignup(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Expanded(child: _desktiodesign(context)),
            Expanded(child: _Desktoploginview(context))
          ],
        ),
    );

  }
  Widget _desktiodesign(BuildContext context){
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        // Background liquid shader, filling the whole area
        Positioned.fill(
          child: GKWidget(
            effect: LiquidEffect(
              //speed: 1.0,
              viscosity: 0.5,
              colors: [//Colors.amber,
                Colors.black,Colors.black,
                Colors.green
              ],
            ),
            trigger: GKTrigger.auto,
          ),
        ),

        // Your card content on top, with a lighter overlay so the liquid shows through
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.35),
          ),
          padding: EdgeInsets.all(w * 0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_balance,
                    size: w * 0.05,
                    color: Colors.green,
                  ),
                  SizedBox(width: w * 0.01),
                  Text(
                    'CashPay',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: w * 0.01),
              Text(
                'Secure.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.05,
                  color: Colors.white,
                ),
              ),
              Text(
                'Secure.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.05,
                  color: Colors.white,
                ),
              ),
              Text(
                'Instant.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.05,
                  color: Colors.white,
                ),
              ),
              RichText(
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                text: TextSpan(
                  text:
                  "Join millions of users managing their \n\nfinances with precision and dynamism",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: w * 0.02),
              Row(
                children: [
                  Icon(
                    Icons.shield,
                    color: Colors.green,
                    size: w * 0.05,
                  ),
                  SizedBox(width: w * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BANK-GRADE SECURITY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        '256-bit encryption on all \n transactions',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _Desktoploginview(BuildContext context){
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(w*0.030),
          //child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text('Log In',style: TextStyle(fontSize: w*0.03,color: Colors.black,),),
                    SizedBox(width: w*0.03,),
                    Text('Sign Up',style: TextStyle(fontSize: w*0.03,color: Colors.black,),),
                  ],
                ),
               // Text('Email or Phone',style: TextStyle(fontSize: w*0.02,color: Colors.black,),),
                SizedBox(height: h * 0.03),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email or Phone Number",
                    hintText: "Email or Phone Number",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.03),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                SizedBox(
                    width: double.infinity,
                    child:ElevatedButton.icon(
                      onPressed: () {
                        // handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade700,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: h * 0.01),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      iconAlignment: IconAlignment.end,
                      label: Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: w * 0.020,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      icon: Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          size: w * 0.025,
                        ),
                      ),
                    )
                ),
                SizedBox(height: h * 0.03),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.black, thickness: 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or continue with"),
                      ),
                      Expanded(
                        child: Divider(color: Colors.black, thickness: 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.005,),
                Row(
                  children: [
                    Flexible(child:  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // handle login logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: h * 0.02),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.green,
                          size: w * 0.020,
                        ),
                        label: Text(
                          "Cash Pay",
                          style: TextStyle(fontSize: w * 0.010),
                        ),
                      ),
                    ),
                    ),
                    SizedBox(width: w*0.010,),
                    Flexible(child:
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // handle login logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: h * 0.02),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: Icon(Icons.account_balance, size: w * 0.020),
                        label: Text(
                          "Bank Link",
                          style: TextStyle(fontSize: w * 0.010),
                        ),
                      ),
                    ),
                    )
                  ],
                )
              ],
            ),
        //  ),
        )
    );

  }
}


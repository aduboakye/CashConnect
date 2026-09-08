import 'package:flutter/material.dart';

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
                  SizedBox(height: h * 0.05),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'images/cashpay.png',
                        height: h * 0.2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(
                          "CashPay",
                          style: TextStyle(
                            fontSize: w * 0.10,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
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
                        borderSide: BorderSide(color: Colors.black),
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
                  SizedBox(height: h * 0.05),
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
                        borderSide: BorderSide(color: Colors.black),
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
                      SizedBox(width: w * 0.18),
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
                    child: ElevatedButton.icon(
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
                      label: Text(
                        "Sign In ",
                        style: TextStyle(fontSize: w * 0.045),
                      ),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: w * 0.07,
                      ),
                    ),
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
                        "CashApp",
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

  // ✅ Also a method inside the class.
  Widget _desktopviewsignup(BuildContext context) {
    return const Placeholder();
  }
} // <-- The class's REAL closing brace is here, after everything.

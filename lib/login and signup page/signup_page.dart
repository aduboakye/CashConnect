import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shaders_ui/flutter_shaders_ui.dart';
import 'package:animate_text/animate_text.dart';
import 'package:shimmer/shimmer.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? rememberMe = false;
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool hasMinLength = false;
  bool hasNumberAndSymbol = false;
  bool hasMixedCase = false;

  int passwordStrength = 0;
  void checkPasswordStrength(String password) {
    final minLength = password.length >= 8;

    final hasNumber = RegExp(r'[0-9]').hasMatch(password);
    final hasSymbol = RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=]').hasMatch(password);

    final numberAndSymbol = hasNumber && hasSymbol;

    final mixedCase =
        RegExp(r'[a-z]').hasMatch(password) &&
        RegExp(r'[A-Z]').hasMatch(password);

    int strength = 0;

    if (minLength) strength++;
    if (numberAndSymbol) strength++;
    if (mixedCase) strength++;

    setState(() {
      hasMinLength = minLength;
      hasNumberAndSymbol = numberAndSymbol;
      hasMixedCase = mixedCase;
      passwordStrength = strength;
    });
  }

  Widget strengthBar(int index) {
    final bool active = passwordStrength >= index;

    return Expanded(
      child: Container(
        height: 5,
        decoration: BoxDecoration(
          color: active ? Colors.green : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget passwordRequirement({required String text, required bool satisfied}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        height: 35,
        child: ElevatedButton.icon(
          onPressed: null,

          icon: Icon(satisfied ? Icons.check : Icons.close, size: 14),

          label: Text(
            text,
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11),
          ),

          style: ElevatedButton.styleFrom(
            backgroundColor: satisfied
                ? Colors.greenAccent
                : Colors.grey.shade300,

            foregroundColor: satisfied ? Colors.black : Colors.grey.shade700,

            disabledBackgroundColor: satisfied
                ? Colors.greenAccent
                : Colors.grey.shade300,

            disabledForegroundColor: satisfied
                ? Colors.black
                : Colors.grey.shade700,

            elevation: 0,

            minimumSize: Size.zero,

            padding: const EdgeInsets.symmetric(horizontal: 5),

            tapTargetSize: MaterialTapTargetSize.shrinkWrap,

            visualDensity: VisualDensity.compact,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }

  Widget _mobileview(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    final height = constraints.maxHeight;

    return Scaffold(
      body: SafeArea(
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
                    maxLines: 1,
                    softWrap: false,
                    // overflow: TextOverflow.ellipsis,
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }

                      if (!value.contains('@')) {
                        return 'Invalid email: @ is required';
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,

                    onChanged: checkPasswordStrength,

                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

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
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        passwordStrength == 0
                            ? ''
                            : passwordStrength == 1
                            ? 'Weak'
                            : passwordStrength == 2
                            ? 'Medium'
                            : 'Strong',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: passwordStrength == 1
                              ? Colors.red
                              : passwordStrength == 2
                              ? Colors.orange
                              : Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      strengthBar(1),
                      const SizedBox(width: 10),
                      strengthBar(2),
                      const SizedBox(width: 10),
                      strengthBar(3),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      passwordRequirement(
                        text: '8+ chars',
                        satisfied: hasMinLength,
                      ),

                      passwordRequirement(
                        text: 'Number & symbol',
                        satisfied: hasNumberAndSymbol,
                      ),

                      passwordRequirement(
                        text: 'Mixed case',
                        satisfied: hasMixedCase,
                      ),
                    ],
                  ),
                  //SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
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

                        Expanded(
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.scaleDown,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "I agree to CashPay's ",
                                    style: TextStyle(color: Colors.black),
                                  ),

                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                    ),
                                  ),

                                  const TextSpan(
                                    text: ' & ',
                                    style: TextStyle(color: Colors.black),
                                  ),

                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade700,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
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
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      icon: Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.white,
                        child: Icon(Icons.arrow_forward, size: width * 0.05),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ),
      ),
    );
  }
}

Widget _desktopviewsignup(BuildContext context) {
  return Placeholder();
}

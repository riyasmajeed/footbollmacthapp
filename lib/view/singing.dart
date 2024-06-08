import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:batting_app/controller/auth.service.dart';
import 'package:batting_app/view/loginpage.dart';

class SigningPage extends StatefulWidget {
  const SigningPage({Key? key}) : super(key: key);

  @override
  State<SigningPage> createState() => _SigningPageState();
}

class _SigningPageState extends State<SigningPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userConfirmPasswordController = TextEditingController();

  bool _validateEmail = false;
  bool _validatePassword = false;
  bool _validateConfirmPassword = false;
  bool _isSigning = false;

  @override
  void dispose() {
    _userEmailController.dispose();
    _userPasswordController.dispose();
    _userConfirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff881736),
            Color(0xff281537),
          ]),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: screenHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _userEmailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(),
                        hintText: 'Email id',
                        errorText: _validateEmail ? 'Email can\'t be empty' : null,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _userPasswordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(),
                        hintText: 'Password',
                        errorText: _validatePassword ? 'Password can\'t be empty' : null,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _userConfirmPasswordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(),
                        hintText: 'Confirm password',
                        errorText: _validateConfirmPassword ? 'Confirm password can\'t be empty' : null,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: _isSigning ? null : () => _signUp(context),
                          child: _isSigning
                              ? const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                )
                              : const Text("CREATE"),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          onPressed: _clearFields,
                          child: const Text("CLEAR"),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Loginpage()),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Do you have an account?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
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
          ),
        ),
      ),
    );
  }

  void _signUp(BuildContext context) async {
    setState(() {
      _validateEmail = _userEmailController.text.isEmpty;
      _validatePassword = _userPasswordController.text.isEmpty;
      _validateConfirmPassword = _userConfirmPasswordController.text.isEmpty;
    });

    if (_validateEmail || _validatePassword || _validateConfirmPassword) {
      return;
    }

    if (_userPasswordController.text != _userConfirmPasswordController.text) {
      setState(() {
        _validateConfirmPassword = true;
      });
      return;
    }

    setState(() {
      _isSigning = true;
    });

    String email = _userEmailController.text;
    String password = _userPasswordController.text;

    // Call the sign up method from the auth service
    User? signUpSuccess = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (signUpSuccess != null) {
      _showToast("User created successfully");
      // Navigate to another page or perform any other action upon successful sign-up
    } else {
      _showToast("Failed to create user. Please try again.");
    }
  }

  void _clearFields() {
    _userEmailController.clear();
    _userPasswordController.clear();
    _userConfirmPasswordController.clear();
    setState(() {
      _validateEmail = false;
      _validatePassword = false;
      _validateConfirmPassword = false;
    });
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
  }
}

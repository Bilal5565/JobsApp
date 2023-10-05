import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LoginScreen> {
  bool secureText = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? email = '';
  String? password = '';
  late double height, width;
  save() {
    setState(() {
      _emailController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  title(),
                  registrationForm(),
                  button(),
                  textButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget title() {
    return const Text(
      'Finstagram',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget registrationForm() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            emailField(),
            SizedBox(
              height: height * 0.04,
            ),
            passwordField()
          ],
        ));
  }

  Widget emailField() {
    return TextFormField(
      controller: _emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter your email';
        } else if (!value.contains('@')) {
          return 'Enter a valid email';
        }
        return null;
      },
      onSaved: (newValue) {
        setState(() {
          email = newValue;
        });
      },
      decoration: const InputDecoration(
        labelText: 'Email...',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      controller: _passwordController,
      validator: (value) =>
          value!.length > 6 ? null : 'Please enter a valid password',
      onSaved: (newValue) {
        setState(() {
          password = newValue;
        });
      },
      obscureText: secureText,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              secureText = !secureText;
            });
          },
          icon: Icon(
            secureText ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }

  Widget button() {
    return ElevatedButton(
      onPressed: () {
        _formKey.currentState!.save();
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();

          save();
        }
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width * 0.80,
          height * 0.075,
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
      ),
      child: Text(
        'LOGIN',
        style: TextStyle(
          fontSize: height * 0.028,
        ),
      ),
    );
  }

  Widget textButton() {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'signup');
        },
        child: const Text(
          "Don't have an account?",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ));
  }
}

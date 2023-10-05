import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  bool secureText = true;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? name = '';
  String? email = '';
  String? password = '';
  late double height, width;
  save() {
    setState(() {
      _nameController.clear();

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
                  image(),
                  loginForm(),
                  button(),
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

  Widget image() {
    return Container(
      width: width * 0.36,
      height: height * 0.18,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/profile.png')),
        borderRadius: BorderRadius.circular(
          height * 0.01,
        ),
      ),
    );
  }

  Widget loginForm() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            nameField(),
            SizedBox(
              height: height * 0.03,
            ),
            emailField(),
            SizedBox(
              height: height * 0.03,
            ),
            passwordField()
          ],
        ));
  }

  Widget nameField() {
    return TextFormField(
      controller: _nameController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter your name';
        }
        return null;
      },
      onSaved: (newValue) {
        setState(() {
          name = newValue;
        });
      },
      decoration: const InputDecoration(
        labelText: 'Name...',
      ),
    );
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
        'REGISTER',
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

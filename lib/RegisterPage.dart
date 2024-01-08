// Import necessary packages
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold widget defines the basic material design visual structure
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'), // AppBar with a title 'Register'
      ),
      body: RegisterForm(), // Display the RegisterForm widget in the body
    );
  }
}

// Define a StatefulWidget class named RegisterForm
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

// Define the state class for RegisterForm
class _RegisterFormState extends State<RegisterForm> {
  // GlobalKey for the Form widget to access and validate form state
  final _formKey = GlobalKey<FormState>();
  // TextEditingController for handling email input
  TextEditingController _emailController = TextEditingController();
  // TextEditingController for handling password input
  TextEditingController _passwordController = TextEditingController();

  // Method to handle the registration process
  void _register(BuildContext context) async {
    // Validate the form
    if (_formKey.currentState!.validate()) {
      try {
        // Use FirebaseAuth to create a new user with email and password
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text.trim(),
                password: _passwordController.text);

        // If registration is successful, navigate to the home page
        if (userCredential.user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MacfitHomePage()),
          );
        }
      } catch (e) {
        // Handle registration failure, print error, and show a snackbar
        print('Registration failed: $e');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Registration failed: $e'),
          duration: Duration(seconds: 5),
        ));
      }
    }
  }

  // Build method to create the widget tree for this stateful widget
  @override
  Widget build(BuildContext context) {
    // Form widget to handle the form state and validation
    return Form(
      key: _formKey,
      child: Column(
        // Implement form fields for email, password, and registration button
        children: [
          TextFormField(
            controller: _emailController,
            validator: (value) {
              // Validate email
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true, // Hide the password
            validator: (value) {
              // Validate password
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Call the registration method when the button is pressed
              _register(context);
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}

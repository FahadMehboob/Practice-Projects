import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your name";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Phone",
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your phone";
                }
                if(value.length < 11){
                  return "Phone number cannot be less than 11";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your email";
                }
                if(!value.contains('@')){
                  return "Invalid email address";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter your password";
                }
                if(value.length <= 5){
                  return "Password must be greater than 5";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
               if(formKey.currentState!.validate()){
                 print('Name: ${nameController.text}');
                 print('Email: ${emailController.text}');
                 print('Phone: ${phoneController.text}');
                 print('Password: ${passwordController.text}');
               }
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}

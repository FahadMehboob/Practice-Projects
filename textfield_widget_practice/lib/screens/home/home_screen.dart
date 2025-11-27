import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TextField Widget",
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Enter your email",
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.email),
              suffixIcon: IconButton(
                onPressed: () {
                  emailController.clear();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.number,
            obscuringCharacter: '*',
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {
                  passwordController.clear();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 7,
            decoration: InputDecoration(
              hintText: "Enter your description",
              labelText: "Description",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.description),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print(emailController.text);
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}

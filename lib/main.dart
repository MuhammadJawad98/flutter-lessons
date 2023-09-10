import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  //in flutter everything is a widget
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyFirstScreen()
        //     Scaffold(
        //   appBar: AppBar(title: const Text('task')),
        //   body: const Center(child: Text("My name is Jawad")),
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {},
        //     child: const Icon(Icons.add),
        //   ),
        // )
        );
  }
}

//Class Constructors & Named Arguments
class MyFirstScreen extends StatelessWidget {
  //? nullable
  final String name;

  const MyFirstScreen({Key? key, this.name = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               TextField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: 'Email')),
              const SizedBox(height: 10),
               TextField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: 'Password')),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
              }, child: const Text('Submit')),
              TextButton(onPressed: (){}, child: Text('Submit')),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              CloseButton(),
              //your task is to explore the scafold properties like appbar,
              //body, bottomnavigation,floating button etc
              // also you need to make a sign in and login screen
            ],
          ),
        ));
  }
}

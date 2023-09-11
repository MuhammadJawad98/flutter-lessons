import 'package:flutter/material.dart';
import 'package:untitled6/widgets/custom_elevated_button.dart';
import 'package:untitled6/widgets/custom_textfield.dart';

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
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                onChanged: (val) {
                  print('email: $val');
                },
              ),
              const SizedBox(height: 10),
              CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obsureText: true),
              const SizedBox(height: 10),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: ElevatedButton.icon(
              //     onPressed: () {
              //       print('Email: ${emailController.text}');
              //       print('Password: ${passwordController.text}');
              //     },
              //     icon: Icon(Icons.home),
              //     label: Text('Submit'),
              //   ),
              // ),
              CustomElevatedButton(
                  label: 'Submit',
                  icon: const Icon(Icons.calendar_month),
                  onTap: () {
                    print('clicked.....');
                  }),
              CustomElevatedButton(
                  label: 'Login',
                  icon: const Icon(Icons.login),
                  onTap: () {
                    print('login.....');
                  }),
              const Text(
                'My name is Jawad. I am a software engineer in Pakistan',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.redAccent),
              ),
            ],
          ),
        ));
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print("i am here.........");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('sum = $_counter'),
  _counter>=10  ? Text('I am greater or equal to 10')
                  :
  (_counter>=5 ? Text('greater than 5'):Text('Its less than 5')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: const Text('Add'))
            ]),
      ),
    );
  }
}

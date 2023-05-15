import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello: hoang.vuvan',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: Colors.lime,backgroundColor: Colors.blueGrey),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text.rich(
              TextSpan(
                text: "Hello",
                children: <TextSpan>[
                  TextSpan(text: ' Thea!',style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: ' My name Hoang TB 113')
                ]
              )
            ),
            ElevatedButton(onPressed: () {}, child: Text("Hello")),
            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.ac_unit), label: Text("Button Click Here")),
            TextButton(onPressed: (){
              print("hello click");
            }, child: Text('Click me'))
            // ElevatedButton.icon(onPressed: (){}, icon: "", label: Text("Hello"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

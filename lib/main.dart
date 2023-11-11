import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp is where all flutter apps run.

// We then extend the base MyApp with a Stateful widget
// Because this widget has a state that changes, we have
// manage the state with the createState function.

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Here we initialize our variables that we will use in our app.
  String title = "My favourite fruits are ";
  String fruit = "";

  @override
  Widget build(BuildContext context) {

    // We return the MaterialApp because that gives some useful functionality
    // like Scaffold and the AppBar

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          // The AppBar then extends towards a text widget that displays our two string
          // variables.

          title: Text(title + fruit),

          ),

          // We then go one branch up the widget tree to then add a body widget below the
          // AppBar. This we center align and add a column widget to.
          body: Center(
            child: Column(
            
            // The children of the Column widget is a series of Buttons. They each have a 
            // OnPress event handler that sets the state of the fruit string variable.

            // This gives us the dynamic functionality that we require.
            
            children: [
              
              // Apple Button

              ElevatedButton(
                child: const Text("Apples"),
                onPressed: () {
                  setState(() {
                    fruit = "Apples";
                  });
                }),
              
              // Orange Button

              ElevatedButton(
                child: const Text("Orange"),
                onPressed: () {
                  setState(() {
                    fruit = "Oranges";
                  });
                }),
              
              // Mango Button

              ElevatedButton(
                child: const Text("Mango"),
                onPressed: () {
                  setState(() {
                    fruit = "Mango";
                  });
                }),
              
              // Guava Button

              ElevatedButton(
                child: const Text("Guavas"),
                onPressed: () {
                  setState(() {
                    fruit = "Guavas";
                  });
                })
              ],
            ),
          )
        ),
    );
  }
}

// the app is a bit ugly but we will get to adding padding and 
// margins to the widgets at a later stage.
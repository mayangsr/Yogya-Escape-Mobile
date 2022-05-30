import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/736x/47/db/3c/47db3c5d52fb2085a2c6d16be5a9c91a.jpg"),
              fit: BoxFit.cover)
              ),
              child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 139, 92, 0.6),
                      Color.fromARGB(255, 121, 180, 157),
                    ],
                  )
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('img/Escape white.png', width: 257,),
                    const Text("Yogya Escape", style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'italiana')),
                    const Text("Let’s begin your adventure in Yogyakarta", style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: 'italiana')),
                    Container(
                      margin: const EdgeInsets.only(top: 100.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: StadiumBorder(),
                          fixedSize: Size(117, 43)
                        ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const Text("Let's Go", style: TextStyle(color: Color.fromRGBO(0, 139, 92, 1), fontSize: 20, fontFamily: 'robotoSlab'),),
                      ),
                    ),
                  ],
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
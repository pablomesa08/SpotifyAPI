import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPOTIFY API',
      theme: ThemeData(
        primaryColor: Colors.pink,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPOTIFY API',
            style: TextStyle(fontSize: 24, color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 11, 68, 114),
        leading: const Row(
          children: [
            Image(
              image: AssetImage('assets/images/mailo.png'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 11, 68, 114),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'CORLEONE INTERNATIONAL RECORDS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    blurRadius: 15.0,
                    color: Colors.white,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 80.0,
                    spreadRadius: 5.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
              child: const Image(
                image: AssetImage('assets/images/Chencho.png'),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'About the Artist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  icon: const Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Albums',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Top Tracks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  icon: const Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Related Artists',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

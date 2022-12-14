import 'package:flutter/material.dart';
import 'package:palyfaircipher/Caesar.dart';
import 'PlayFont.dart';
import 'CaesarFont.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'CONTEST';
    return const MaterialApp(
      home: SplashScreen(),
      title: appTitle,
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.lightBlueAccent.shade700,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            const SizedBox(
              height: 35,
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PlayFont.PlayFont()));
                  },
                  label: const Text('PLAYFAIR CIPHER',
                      style: TextStyle(fontSize: 20)),
                  icon: const Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.pink,
                    padding: const EdgeInsets.all(16),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CaesarFont()));
                  },
                  label: const Text('CAESAR CIPHER',
                      style: TextStyle(fontSize: 20)),
                  icon: const Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(270, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.pink,
                    padding: const EdgeInsets.all(16),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ));
                  },
                  label:
                      const Text('OTP CIPHER', style: TextStyle(fontSize: 20)),
                  icon: const Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(270, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.pink,
                    padding: const EdgeInsets.all(16),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ));
                  },
                  label:
                      const Text('OTTENDORF', style: TextStyle(fontSize: 20)),
                  icon: const Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(270, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.pink,
                    padding: const EdgeInsets.all(16),
                  ),
                )),
            Column(children: []),
          ]),
        ),
      ),
    );
  }
}

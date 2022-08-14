import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PlayFair.dart';

class PlayFont extends StatefulWidget {
  const PlayFont.PlayFont({Key? key}) : super(key: key);

  @override
  State<PlayFont> createState() => _PlayFontState();
}

class _PlayFontState extends State<PlayFont> {
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();

  //TextEditingController myController2 = TextEditingController();
  String encryptedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Center(
            child: Text(
          'PLAYFAIR CIPHER',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        )),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        iconSize: 45,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PlayFont.PlayFont()));
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: "Encoder",
            icon: FaIcon(
              FontAwesomeIcons.keycdn,
              color: Colors.deepPurpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: "TestCase",
            icon: FaIcon(
              FontAwesomeIcons.clipboardQuestion,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
        currentIndex: 0,
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      controller: myController,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "ENTER A TEXT",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black),
                      controller: myController1,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "ENTER KEY",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent.shade700,
                          side: const BorderSide(width: 0, color: Colors.black),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.all(20)),
                      onPressed: () {
                        setState(() {
                          encryptedText = encryptByPlayfairCipher(
                              myController.value.text,
                              (myController1.value.text.toString()));
                        });
                      },
                      child: const Text(
                        'ENCRYPT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Center(
                    child: Text(
                      encryptedText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.redAccent.shade700),
                    ),
                  ),
                  /*TextFormField(
              controller: myController2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'out put',
              ),
            ),*/
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

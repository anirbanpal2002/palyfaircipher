import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Caesar.dart';

class CaesarFont extends StatefulWidget {
  const CaesarFont({Key? key}) : super(key: key);

  @override
  State<CaesarFont> createState() => _CaesarFontState();
}

class _CaesarFontState extends State<CaesarFont> with Ceaser {
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();
  //TextEditingController myController2 = TextEditingController();
  String? encryptedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Center(
            child: Text(
          'CAESAR CIPHER',
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
                          encryptedText = encryption(myController.value.text,
                              int.parse(myController1.value.text));
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
                      encryptedText!,
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

import 'package:flutter/material.dart';

class WalkerPage extends StatefulWidget {
  const WalkerPage({Key? key}) : super(key: key);

  @override
  State<WalkerPage> createState() => _WalkerPageState();
}

class _WalkerPageState extends State<WalkerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFACA),
        title: const Text(
          'KÖPEK GEZDİRME',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/png/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Image.asset(
                'assets/png/kopek_gezdirme.png',
                width: 300,
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Yakında...',
                  style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80.0),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

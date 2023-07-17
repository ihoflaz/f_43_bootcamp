import 'package:flutter/material.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({Key? key}) : super(key: key);

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEE5FF),
        title: const Text(
          'SAHİPLENDİR',
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
                'assets/png/sahiplenme.png',
                width: 400,
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
                  SizedBox(height: 100.0),
                ],
              ),
          ),

        ],
      ),
    );
  }
}

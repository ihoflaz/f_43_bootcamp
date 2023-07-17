import 'package:flutter/material.dart';


class BoncukPage extends StatelessWidget {
  const BoncukPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7F6FF),
        title: const Text('Boncuk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Color(0xff111111),
            )
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
      body: Column(
        children: [
          Image.asset(
            'assets/png/Boncuk2.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 7 * 25.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFE7F6FF),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'Kedim Boncuk. Onu daha bebekken evlat edindim ve şu anda 2 yaşında. Yünlerle oynamayı ve uyumayı çok sever. Kendisi biraz utangaç bir kedi bu yüzden birbirimize alışmamız uzun sürdü ama şu an en iyi arkadaşlarımdan biri.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE7F6FF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 400.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Cins',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Russian White',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE7F6FF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 400.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Özellikleri',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Enerjik, Sevgi Dolu, Zeki, Uyumlu ,Sevimli',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE7F6FF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 400.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Bakım Önerileri',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kaliteli bir diyet ile beslenmelidir. Yeterince hareket ettirilerek obezite olmasının önüne geçilmeli. İnteraktif oyuncaklarla oynamak onu keyiflendirecektir.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),

        ],

          ),
        );
  }
}

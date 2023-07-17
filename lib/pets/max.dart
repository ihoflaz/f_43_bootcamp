import 'package:flutter/material.dart';

class MaxPage extends StatelessWidget {
  const MaxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE8EC),
        title: const Text('Max',
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
            'assets/png/Max1.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 7 * 25.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE8EC),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'Köpeğim Max ile 7 yıldır birlikteyim. Sahiplendiğim ilk evcil hayvanım, bugün de en iyi dostlarımdan biri olan Max i üniverstede okurken bir barınaktan sahiplenmiştim.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE8EC),
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
                  'Labrador',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE8EC),
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
                  'Enerjik, Cana Yakın, Akıllı, Atletik',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE8EC),
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
                  'Kısa tüyleri çok fazla bakıma ihtiyaç duymaz. Haftada bir tarama ve fırçalaa yeterli olur. Düzenli banyo yapmaları önemlidir.',
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

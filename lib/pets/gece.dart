import 'package:flutter/material.dart';


class GecePage extends StatelessWidget {
  const GecePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE3D3),
        title: const Text('Gece',
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
            'assets/png/Gece2.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 7 * 25.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE3D3),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'En yeni evcil hayvanım Gece. Barınaktan sahipleneli daha 1 ay oldu ama şimdiden evin sahibi gibi davranıyor. Uyumak ve yemek en sevdiği hobiler. Tüyleri simsiyah olmasa da gece beni uyutmamasından dolayı adını gece koydum',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE3D3),
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
                  'Tekir',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE3D3),
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
                  'Uyumlu, Uykucu, Hırslı, Meraklı',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFE3D3),
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
                  'Tüylerinin daha güzel görünmesi içn kaiteli mamalar verebilirsiniz. Besinleri protein ağırlıklı olmalıdır. Komut almayı sevmezler.',
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

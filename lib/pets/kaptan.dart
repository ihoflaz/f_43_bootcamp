import 'package:flutter/material.dart';


class KaptanPage extends StatelessWidget {
  const KaptanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFACA),
        title: const Text('Kaptan',
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
            'assets/png/Kaptan2.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 7 * 25.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFACA),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'Papağanım Kaptan. Kendisi korsanlara bayılır bu yüzden adını Kaptan koydum. Biraz gürültücü olsa da konuşabilen bir hayvana sahip olmak çok keyifli. Kuş yeminin yanında ceviz ve fındık da yemeyi çok sever. Rengarenk tüyleri sahiplendiğim günden beri evime renk katıyor',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFACA),
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
                  'Kırmızı Ara Papağanı',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFACA),
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
                  'Sakin, Konuşkan, Zeki',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFACA),
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
                  'Kafeslerinin içine kemirebilmeleri için ağaç kabuğu vb şeyler konması gerkmektedir. Papağanları yalnız ve ilgisiz bırakmamalısınız. Kafesinin bulunduğu odanın sabit bir sıcaklıkta olduğundan emin olun.',
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

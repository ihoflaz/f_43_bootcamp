import 'package:flutter/material.dart';


class LadyPage extends StatelessWidget {
  const LadyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEE5FF),
        title: const Text('Lady',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2018/04/06/15/29/dog-3296042_1280.jpg',
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 15.0),
            Container(
              height: 7 * 25.0,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color(0xFFEEE5FF),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'Lady bence dünyanın en tatlı köpeklerinden biri. Tanıştığımzdan beri sadık ve şefkatli yapısıyla hepimizn kalbini çaldı. Kendisi sarılmayı ve yaş mamayı çok sever. Her akşam diğer evcil hayvanlarıma sarılarak uyur.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEEE5FF),
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
                    'Maltese Terrier',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEEE5FF),
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
                    'Enerjik, Dost Canlısı, Gürültücü, Tatlı',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEEE5FF),
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
                    'Kürkünün matlaşmasını ve dolaşmasını önlemek için her gün ya da haftada en az 3 kez fırçalamak ve taramak gerekir. Düzenli banyo ve tüy kesimi yapılmalıdır. Yemek sonrası tüyleri ve gözleri temizlenmelidir',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}

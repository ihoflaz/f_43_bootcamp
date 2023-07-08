
import 'package:f_43_bootcamp/widgets/bottomNav_bar.dart';
import 'package:flutter/material.dart';

import '../pets/boncuk.dart';
import '../pets/gece.dart';
import '../pets/kaptan.dart';
import '../pets/lady.dart';
import '../pets/max.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _aboutController = TextEditingController();

  @override
  void dispose() {
    _aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE3D3),
        title: const Text(
          'Profil',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFFE3D3),
                  width: 4.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8.0,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_1280.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Melisa Yıldız',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 4 * 20.0,
              padding: const EdgeInsets.all(8.0),
              width: 350.0,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE3D3),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: _aboutController,
                decoration: const InputDecoration(
                  hintText: 'Kendinden bahset...',
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: (value) {},
                onEditingComplete: () {
                  _aboutController.text;
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFE3D3),
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 350.0,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'example@example.com',
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
              width: 350.0,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Telefon Numarası',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '5555555555',
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
              width: 350.0,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Şehir',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'İstanbul',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              color: Colors.white,
              child: const Center(
                child: Text(
                  'HAYVANLARIM',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BoncukPage()),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7F6FF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 3.0),
                            const Text(
                              'Boncuk',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg',
                                height: 80.0,
                                width: 100.0,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MaxPage()),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE8EC),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 3.0),
                            const Text(
                              'Max',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2016/02/19/15/46/labrador-retriever-1210559_1280.jpg',
                                height: 80.0,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KaptanPage()),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFACA),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 3.0),
                            const Text(
                              'Kaptan',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2019/12/30/05/22/bird-4728857_1280.jpg',
                                height: 80.0,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LadyPage()),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEE5FF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 3.0),
                            const Text(
                              'Lady',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2016/01/05/17/51/maltese-1123016_1280.jpg',
                                height: 80.0,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GecePage()),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE3D3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 3.0),
                            const Text(
                              'Gece',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359_1280.jpg',
                                height: 80.0,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 110.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7F6FF),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: FloatingActionButton(
                          onPressed: () {
                          },
                          child: Icon(Icons.add),
                          backgroundColor: const Color(0xFFFFE3D3),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );

  }
}

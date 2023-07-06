import 'package:f_43_bootcamp/Pages/home_page.dart';
import 'package:f_43_bootcamp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage().backgroundImage),
            fit: BoxFit.cover,
            ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 80,
                horizontal: 10
              ),
              child: Text(
                'SOCIALpet, \nHayvan Dostlarımıza Dair Her Şey...',
                style: GoogleFonts.josefinSans(
                color: Colors.black54,
                fontSize: 40,       
               ),
              ),
            ),
            Image.asset(AppImage().splashImage),
          ],
        ) ,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 150,
          bottom: 40,
        ),
        child: FloatingActionButton( 
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
          },
          backgroundColor: AccentOrangeColor,
           child: Icon(Icons.double_arrow_rounded, color: Colors.black54),
        ),
      ),
    );
  }
}
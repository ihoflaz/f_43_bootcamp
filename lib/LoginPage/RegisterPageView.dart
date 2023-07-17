import 'package:flutter/material.dart';
import '../componenets.dart';
import '../constains/AppTheme.dart';



class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> with WidgetsBindingObserver {
  bool isKeyboardVisible = false;
  void _showRegistered (BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tebrikler'),
          content: Text('Kaydınız Tamamlandı'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Tamam',
                style: TextStyle(color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    setState(() {
      isKeyboardVisible = bottomInset > 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kAccentBlueColor,
              kAccentOrangeColor,
            ],
            begin: Alignment.topLeft,
            transform: GradientRotation(9.0),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [

            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildLRegisterForm(context),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showRegistered(context);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('KAYIT OL',style: TextStyle(fontSize: 23,color: Colors.black),),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(Color(0xFFFFE3D3)),
                                foregroundColor:
                                MaterialStateProperty.all<Color>(Color(0xFFFFE3D3)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if(!isKeyboardVisible)buildLoginAppleGoogle(context,false),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

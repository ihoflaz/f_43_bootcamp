import 'package:f_43_bootcamp/Pages/vet_page.dart';
import 'package:flutter/material.dart';
import '../LoginPage/LoginView.dart';
import '../constains/constants.dart';
import '../widgets/bottomNav_bar.dart';
import '../widgets/customContainer_widget.dart';
import 'AdoptionPage.dart';
import 'WalkerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  const BottomNavBarWidget(),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                onPressed: () {},
                title: 'Topluluk',
                containerHeight: 182,
                containerWidth: 343,
                imagePath: AppImage().toplulukImage,
                containerColor: AccentOrangeColor,
              ),
              SizedBox(height: kDefaultPadding,),
              Padding(
                padding:  EdgeInsets.only(right: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomContainer(
                          onPressed: () {},
                          title: 'Hayvanlar',
                          containerHeight: 174,
                          containerWidth: defaultContainerWidth,
                          imagePath: AppImage().hayvanlarImage,
                          containerColor: AccentBlueColor,
                        ),
                        SizedBox(height: kDefaultPadding),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const WalkerPage()),
                            );
                          },
                          child: CustomContainer(
                            onPressed: () {},
                            title: 'GEZDİRME',
                            containerHeight: 258,
                            containerWidth: defaultContainerWidth,
                            imagePath: AppImage().mesajImage,
                            containerColor: AccentYellowColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const VetPage()),
                            );
                          },
                          child: CustomContainer(
                            title: 'Veteriner',
                            containerHeight: 258,
                            containerWidth: defaultContainerWidth,
                             imagePath: AppImage().veterinerImage,
                             containerColor: AccentPinkColor,

                          ),
                        ),
                        SizedBox(height: kDefaultPadding),
                         GestureDetector(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const AdoptionPage()),
                             );
                           },
                           child: CustomContainer(
                            title: 'Sahiplendir',
                            containerHeight: 174,
                            containerWidth: defaultContainerWidth,
                             imagePath: AppImage().Image,
                             containerColor: AccentPurpleColor,
                        ),
                         ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



  AppBar _buildAppBar(BuildContext context) {
    final String appBarTitle = 'SOCIALpet'; 
    return AppBar(
    leading: Padding(
      padding:  EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AccentOrangeColor,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    ) ,
    title: Padding(
      padding:  EdgeInsets.only(top: kDefaultPadding),
      child: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontStyle: FontStyle.italic),
      ),
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.only(top: kDefaultPadding, right: kDefaultPadding),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        icon: Icon(Icons.exit_to_app, color: Colors.black, size: 32,)
      )
    ],
  );
  }



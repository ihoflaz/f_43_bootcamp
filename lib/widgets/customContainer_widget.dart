
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, 
    required this.title, 
    required this.containerHeight, 
    required this.containerWidth, 
    required this.imagePath, 
    required this.containerColor, 
    this.onPressed,
  });

  final String title;
  final String imagePath;
  final double containerHeight;
  final double containerWidth;
  final Color containerColor;
  final onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
     decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.circular(kDefaultCircular),
     ),
     child:Column(
       children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CircleAvatar(  
                  backgroundColor: kBackgroundColor,
                  child: IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 20,),
                    
                  ),
                ),
              ),
            ], 
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            width: 300,
            child: Image(image: AssetImage(imagePath),
            fit: BoxFit.cover,
           ),
          ),
        ),
       ],
     ),
    );
  }
}


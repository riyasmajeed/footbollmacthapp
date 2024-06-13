import 'package:batting_app/view/matchfuntion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLogos extends StatefulWidget {
  const HomeLogos({super.key});

  @override
  State<HomeLogos> createState() => _HomeLogosState();
}

class _HomeLogosState extends State<HomeLogos> {
  final List<String> imageUrls = [
    'assets/logo.png',
    'assets/manchester.png',
    'assets/logo.png',
    'assets/manchester.png',
    'assets/logo.png',
    'assets/manchester.png',
    'assets/logo.png',
    'assets/manchester.png',
    'assets/logo.png',
    'assets/manchester.png',
    'assets/logo.png',
     'assets/manchester.png',
  ];

  // Track selected images
  final Set<int> selectedIndices = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          GridView.builder(
            padding: const EdgeInsets.all(10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1, // Make items square
            ),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              bool isSelected = selectedIndices.contains(index);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selectedIndices.remove(index);
                    } else {
                      selectedIndices.add(index);
                    }
                  });
                },
                child: Container(
               
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                   color: isSelected
                        ? const Color.fromARGB(255, 252, 2, 2) // Original color when selected
                        : Color.fromARGB(138, 219, 214, 214), // Grayscale when not selected
                   
                  ),
                  padding: const EdgeInsets.all(15), // Conditionally apply padding
                  child: ClipOval(
                    child: ColorFiltered(
                      colorFilter: isSelected
                          ? ColorFilter.mode(
                              Colors.redAccent, // Original color when selected
                              BlendMode.dst,
                            )
                          : ColorFilter.mode(
                              Colors.grey, // Grayscale when not selected
                              BlendMode.saturation,
                            ),
                      child: Image.asset(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                      
                    ),
                  ),
                ),
              );
            },
          ),
         

         Positioned(
          left: 7,
          bottom: 5,
          right: 7,
           child: InkWell(
            onTap: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MatchFunction()));
            },
             child: Container(
              height: 55,
             
              decoration: BoxDecoration(
                       
              color: Color.fromARGB(255, 32, 19, 64),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Center(
                child: Text('CONTINUE',style: TextStyle(
                  color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                ),),
              ),
             ),
           ),
         ),
         SizedBox(height: 10,)
        ],

        
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06());
}

class Lab06 extends StatelessWidget {
  const Lab06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Flutter UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advanced Flutter UI"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "50% Off",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.favorite_outline, size: 30),
                ],
              ),
              Image(image: AssetImage("Assets/NikeAirMax.webp")),
              Text("Nike Air Shoes"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$4500",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "\$5000",
                    style: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.lineThrough, // Strikethrough original price
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20), // Space before "About" section
              
              // New Column for About & Description
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "The Nike Air Shoes are designed for comfort and performance. "
                    "They feature a breathable mesh upper, cushioned sole, and "
                    "a sleek design that makes them perfect for both casual wear "
                    "and sports activities.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                    textAlign: TextAlign.justify,
                  ),
                  
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kbd/bangun_datar/Segitiga.dart';
import 'package:kbd/bangun_datar/jajargenjang.dart';
import 'package:kbd/bangun_datar/ketupat.dart';
import 'package:kbd/bangun_datar/layang.dart';
import 'package:kbd/bangun_datar/lingkaran.dart';
import 'bangun_datar/Persegi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        color: Color(0xFF525FE1),
      ),
      padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Container(
                width: 500.0,
                height: 50.0,
                decoration:
                BoxDecoration(
                    boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 7, // Blur radius
                offset: Offset(0, 3), // Offset
                 ),
                    ],
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF22A699)
                ),
                child: Center(
                  child: Text(
                    'Kalkulator Bangun Datar',  
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: GridView.count(
                  
                  primary: false,
                  padding: EdgeInsets.all(45),
                  crossAxisCount: 2,
                  crossAxisSpacing: 65,
                  mainAxisSpacing: 40,

                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersegiPer()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 5),


                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/persegi.png",
                              width: 75,
                              height: 75,
                            ),
                            Text(
                              "Square",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JajarGenjangJar()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/jajargenjang.png",
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              "Parallelogram",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegitigaSe()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/segitiga.png",
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              "Triangle",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LayangLa()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/kite.png",
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              "Kite",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KetupatKe()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ketupat.png",
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              "Diamond",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LingkaranLi()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFF6F4),
                        ),
                        padding: EdgeInsets.only(top: 10),

                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/lingkaran.png",
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              "Circle",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF86F03)
                              ),
                            ),
                          ],
                        ),
                      ),
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

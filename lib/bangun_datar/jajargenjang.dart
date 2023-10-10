import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:kbd/controller_counter/rumus.dart';
import 'package:get/get_core/src/get_main.dart';

TextEditingController ctrBase = TextEditingController();
TextEditingController ctrHeight = TextEditingController(); // Add a separate controller for height
final LuasController control = Get.put(LuasController());

class JajarGenjangJar extends StatefulWidget {
  const JajarGenjangJar({super.key});

  @override
  State<JajarGenjangJar> createState() => _JajarGenjangJarState();
}

Widget myTextField(TextEditingController ctr) {
  return Container(
    child: TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      controller: ctr,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText:  "Please insert the amount of tall", // Use the label passed as a parameter
        hintText: "e.g. 5 cm",
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: const Color(0xFFF29727),
          ),
        ),
      ),
    ),
  );
}

Widget myTextField2(TextEditingController ctr){
  return Container  (
    child: TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      controller: ctr,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Please insert the amount of tall",
        hintText: "e.g. 5 cm",
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: const Color(0xFFF29727),
          ),
        ),
      ),
    ),
  );
}

class _JajarGenjangJarState extends State<JajarGenjangJar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF525FE1),
      appBar: AppBar(
        title: Text(
          "Parallelogram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          padding: EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child: Card(
              color: const Color(0xFFFFFFFF),
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset("assets/images/bannerpersegi.png"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        "Base :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        child: myTextField(ctrBase),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Tall :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        child: myTextField2(ctrHeight),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 180,
                          height: 380,
                          padding: EdgeInsets.only(bottom: 330),
                          child: ElevatedButton(
                            onPressed: () {
                              ctrBase.clear();
                              ctrHeight.clear();
                              control.hasilLuasJajarGenjang(
                                0.0
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.orange),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(
                                    color: const Color(0xFFF29727),
                                    width: 3.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "Reset",
                              style: TextStyle(color: const Color(0xFFF29727)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 180,
                          height: 380,
                          padding: EdgeInsets.only(bottom: 330),
                          child: ElevatedButton(
                            onPressed: () {
                              control.luasJajarGenjang(
                                  double.parse(ctrBase.text.toString()),
                                  double.parse(ctrHeight.text.toString()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.orange),
                              foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 3.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text("Calculate"),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Result :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                            ),
                            Container(
                              child: Container(
                                alignment: Alignment.center,
                                child: Obx(
                                        ()=>Text('${control.hasilLuasJajarGenjang.value}Cm',style: TextStyle(fontSize: 20),)
                                ),
                              ),
                              width: 175,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text(
                              "Formula :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                            ),
                            Container(
                              child: Center(child: Text("s x s / s²",style: TextStyle(fontSize: 20),)),
                              width: 175,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class sacends extends StatelessWidget {
  sacends({super.key, required this.title,required this.value, r});

   final String title;
   final String value;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator",
              style: TextStyle(color: Color(0xff0C0C0C), fontSize: 30)),
          centerTitle: true,
          backgroundColor: Color(0xff9B3922),
        ),
        body: Container(
            width: double.infinity,
            height: 750,
            color: Color(0xff0C0C0C),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 120, 0),
                        child: Text(
                          "Your Result",
                          style:
                              TextStyle(color: Color(0xffF2613F), fontSize: 40),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 330,
                        height: 510,
                        decoration: BoxDecoration(
                            color: Color(0xffF2613F),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           
                            Text(title,
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              value,
                              style: TextStyle(
                                  color: Color(0xff0C0C0C), fontSize: 90),
                            ),
                            Text(
                              ".",
                              style: TextStyle(color: Color(0xff0C0C0C),fontSize: 25),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff9B3922),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "NewCalculate",
                            style: TextStyle(
                                color: Color(0xff0C0C0C), fontSize: 25),
                          )),
                    )
                  ],
                ),
              ),
            )));
  }
}

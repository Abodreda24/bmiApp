import 'package:bmi/cubit/bmicubt_cubit.dart';
import 'package:bmi/screns/sacendscren.dart';
import 'package:bmi/widjat/contenargendar.dart';
import 'package:bmi/widjat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescren extends StatelessWidget {
   Homescren({super.key});
  

 

  @override
  Widget build(BuildContext context) {
      String maleOrfimail ="male";

 
// Function to calculate BMI
  double calculateBMI(int weight, double height) {
    if (height <= 0) return 0.0; // Avoid division by zero
    return weight / ((height / 100) * (height / 100)); // height is in cm
  }

  // Function to determine BMI category
  String getBMICategory(double bmi) {
    if (bmi < 18.5) return "Underweight";
    if (bmi >= 18.5 && bmi < 24.9) return "Normal";
    if (bmi >= 25 && bmi < 29.9) return "Overweight";
    return "Obesity";
  }
    return BlocBuilder<BmicubtCubit, BmicubtState>(  
      builder: (context, state) {
         var CuobBmi =BlocProvider.of<BmicubtCubit>(context);
         return
     SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator",
              style: TextStyle(color: Color(0xff0C0C0C), fontSize: 30)),
          centerTitle: true,
          backgroundColor: Color(0xff9B3922),
        ),
        body: Container(
          width: double.infinity,
          height: 700,
          color: Color(0xff0C0C0C),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      gendarcontenar(
                        gendar: "male",
                        icone1: Icons.male,
                                  onTap: () {
                            
                        
                            CuobBmi.isMaleOrfemal();
                            
                          
                          },
                          
                              isSelected:CuobBmi.isMale ,
                      ),
                      SizedBox(width: 20.h),
                      gendarcontenar(
                        gendar: "female",
                        icone1: Icons.female,
                                  onTap: () {
                            CuobBmi.isfemalormale();
                          },
                               isSelected: CuobBmi.isFemale,

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF2613F),
                    ),
                    width: 370,
                    height: 200,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Height",
                              style: TextStyle(
                                  color: Color(0xff0C0C0C), fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                               CuobBmi.height.toStringAsFixed(0),
                                style: TextStyle(
                                    color: const Color(0xff0C0C0C),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "cm",
                                    style: TextStyle(
                                        color: const Color(0xff0C0C0C),
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Slider(
                            activeColor: const Color(0xff0C0C0C),
                            inactiveColor: const Color(0xff9B3922),
                            value: CuobBmi.height,
                            onChanged: (value) {
                              CuobBmi.value_1(value);
                            },
                            min: 0,
                            max: 300,
                          )
                        ]),
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                       Data(
                         Tital: "Weight",
                         value: CuobBmi.weight,
                         dataAdd:CuobBmi.addwidth,
                         dataRemove: CuobBmi.removewidth,
                       ),
                        SizedBox(width: 28),
                        Data(
                         Tital: "Age",
                         value: CuobBmi.age,
                         dataAdd:CuobBmi.addage,
                         dataRemove:CuobBmi.removeage,
                       ),
                        
                  ],),
                  SizedBox(height: 10,),
                  Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Color(0xff9B3922),),
                  child: TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sacends(
                      
                        title: getBMICategory(calculateBMI(CuobBmi.weight,CuobBmi.height)),
                        value: calculateBMI(CuobBmi.weight, CuobBmi.height).toStringAsFixed(1), 
                      )
                    ),
                  );
                    
                  }, child: Text("Calculate",style: TextStyle(color: Color(0xff0C0C0C),fontSize: 25),)),
                  
                  )
              
               ],
              ),
            ),
          ),
        ),
      ),
      );
      },
  );
  }
}

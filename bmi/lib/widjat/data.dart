import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({
    super.key,
    required this.Tital,
    required this.value, required this.dataAdd, required this.dataRemove,
  });
  final String Tital;
  final int value;
  final Function() dataAdd;
final Function() dataRemove;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
          color: Color(0xffF2613F), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Tital,
            style: TextStyle(color: Color(0xff0C0C0C), fontSize: 25),
          ),
          Text(
            "$value",
            style: TextStyle(color: Color(0xff0C0C0C), fontSize: 30),
          ),
          Container(
            width: 140,
            height: 80,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xff0C0C0C),
                  ),
                  child: IconButton(onPressed: () {
                    dataAdd();
                    
                  }, icon: Icon( Icons.add,color: Color(0xff9B3922),)),
                ),
                SizedBox(width: 50),
                Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xff0C0C0C),
                  ),
                   child: IconButton(onPressed: () {
                    dataRemove();
                  }, icon: Icon( Icons.remove,color: Color(0xff9B3922),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

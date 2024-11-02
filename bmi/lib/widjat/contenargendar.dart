import 'package:flutter/material.dart';

class gendarcontenar extends StatelessWidget {
  const gendarcontenar({super.key, required this.icone1, required this.gendar, required this.onTap, required this.isSelected,});
      final Function() onTap;
  final IconData icone1 ;
final bool isSelected;
final String gendar ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
                        width: 170,
                        height: 200,
                        decoration: BoxDecoration(
                           color:isSelected?const Color(0xffF2613F): const Color(0xff9B3922),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icone1,
                              size: 120,
                            ),
                            Text(gendar,
      
                            style: TextStyle(fontSize: 35),)
                      
                          ],
                        ),
                      ),
    );
  }
}
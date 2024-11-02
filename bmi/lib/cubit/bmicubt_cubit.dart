import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

part 'bmicubt_state.dart';

class BmicubtCubit extends Cubit<BmicubtState> {
  BmicubtCubit() : super(BmicubtInitial());
  
   String maleOrfimail ="male";
  int age = 10;
  int weight = 90;
  double height = 180;
  bool isMale = false ;
  bool isFemale = false;

 void addwidth(){
emit(BmicubtInitial());
   weight++;
   emit(Addwidth());
 }
 
 void removewidth(){
   emit(BmicubtInitial());
 if(weight>0){
  
   weight--;
   emit(Removewidth());
 }

 
 }
 void addage(){
    emit(BmicubtInitial());

    age++;
    emit(Addage());
  
 }
 void removeage(){
    emit(BmicubtInitial());
 if(age>0){

    age--;
   emit(Removeage());
 
 }
 }
  
  void isMaleOrfemal(){
     
           isMale = false;
           isFemale = true;
                            
  }
  void isfemalormale(){
     
           isMale = true;
           isFemale = false;
                            
  }
  void value_1(value){
  
                                height = value;
                            
  }
}

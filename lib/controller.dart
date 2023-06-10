

import 'package:get/get.dart';

class myncontroller extends GetxController{
  RxInt sum=0.obs,sub=0.obs;
  int a=0,b=0;
  void sum_fun(String x, String y){
    a=int.parse(x);
    b=int.parse(y);
    sum.value=a+b;
  }
  void sub_fun(String x, String y){
    a=int.parse(x);
    b=int.parse(y);
    sub.value=a-b;
  }

}
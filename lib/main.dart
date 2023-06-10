import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main(){

  runApp(GetMaterialApp(home: getxdemo(),));
}
class getxdemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    myncontroller m=Get.put(myncontroller());
    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("GETX Demo"),),
      body: Column(children: [
        TextField(controller: t1,),
        TextField(controller: t2,),
        Obx(() => Text("Sum:${m.sum.value}")),
        Obx(() => Text("Sub:${m.sub.value}")),

        ElevatedButton(onPressed: () {
          String a=t1.text;
          String b=t2.text;
          m.sum_fun(a, b);

        }, child: Text("SUM")),

        ElevatedButton(onPressed: () {
          String a=t1.text;
          String b=t2.text;
          m.sub_fun(a, b);

        }, child: Text("SUB"))

      ]),
    );
  }
}

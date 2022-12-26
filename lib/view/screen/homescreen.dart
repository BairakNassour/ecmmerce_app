import 'package:ecommerce_app/controller/auth/ScreenHomeController.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    Crud crud=new Crud();
    Get.put(ScreenHomeControllerImpl());
    return GetBuilder<ScreenHomeControllerImpl>(
      builder: (controller)=>
      Scaffold(
        
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.chngepage(0);
      },
      child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  
      
        
      
      bottomNavigationBar: BottomAppBar(
        
        color: Colors.lightBlueAccent,
        shape: CircularNotchedRectangle(),
        
        child: Row(
        children: [
          Row(
            children: [
              MaterialButton(
                onPressed:(){
                  controller.chngepage(2);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person,color: controller.currentpage==2 ? Colors.red : Colors.black ,),
                    Text("Profile")
                  ],
                ),
              ),



              MaterialButton(
                
                onPressed:(){controller.chngepage(0);},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home,color: controller.currentpage==0 ? Colors.red : Colors.black ,),
                    Text("home")
                  ],
                ),
              ),
              



              
              MaterialButton(
                onPressed:(){
                  
                  controller.chngepage(3);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.production_quantity_limits,color: controller.currentpage==3 ? Colors.red : Colors.black ,),
                    Text("Products")
                  ],
                ),
              ),

              MaterialButton(
                onPressed:(){
                  controller.chngepage(1);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.settings,color: controller.currentpage==1 ? Colors.red : Colors.black ,),
                    Text("Setting")
                  ],
                ),
              ),

              
            ],
          )
        ],
      )
      
      ),
      body: controller.listpage.elementAt(controller.currentpage),
    )
    );
  }
}
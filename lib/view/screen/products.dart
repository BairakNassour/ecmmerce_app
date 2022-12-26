import 'package:ecommerce_app/controller/useraccount.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controller/productscontroller.dart';

class Products extends StatelessWidget {
  
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    RefreshControllerImpl controller=Get.put(RefreshControllerImpl());
    return GetBuilder<RefreshControllerImpl>(
      init: controller.refreshing(),
      initState:controller.refreshing() ,
      builder: (controller)=> Scaffold(
      
      body:Column(
        children: [
         
          Container(
            
            child: Expanded(
              
              flex: 1,
              child: ListView.builder(
                itemCount: controller.product.length,
                itemBuilder: (context, index) {
                  
                    String img=controller.product[index]['product_image'];

                  return Container(

                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    
                    decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10),),
                              
                    child: ListTile(
                    
                    title:Text(controller.product[index]['product_name'],
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)) ,
                    subtitle:Text(controller.product[index]['product_price']+"\$",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)) ,
                    leading:Text(controller.product[index]['product_id'],
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)) ,
                    trailing:  Image.asset(height: 120,width: 120,"android/assets/images/$img",),
                     
                    ),
                  );
                  
                
              },),
            )
            ),
        ],
      ),
      ));
  }
}
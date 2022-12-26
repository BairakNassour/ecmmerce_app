import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart';
import '../../controller/productscontroller.dart';
import '../../controller/routes.dart';
import '../../controller/useraccount.dart';

class Home extends StatelessWidget {
   
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    RefreshControllerImpl controller1=Get.put(RefreshControllerImpl());
     
    HomeControllerImpl controller =Get.put(HomeControllerImpl());
    List <Image> items = [
     
        Image.asset(height: 40,width: 130,"android/assets/images/laptopicon.png",),
                                
        Image.asset(height: 40,width: 130,"android/assets/images/mobileicon.png",),
                                 
        Image.asset(height: 40,width: 130,"android/assets/images/watchicon.png",),

        Image.asset(height: 40,width: 130,"android/assets/images/homepage.jpg",),
                                
    ];
    List<String> name = [
      "laptop",
      "mobile",
      "watch",
      "home"
    ];
    List<String> link = [
      "laptop",
      "mobile",
      "watch",
      "headphone"
    ];
      

    return Scaffold(
      
      //backgroundColor: Colors.grey[300],
     body: Container(
      margin: EdgeInsets.only(left: 5),
      child: ListView(
        children: [
          
          Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              
              
              Expanded(child: TextFormField(
                decoration: InputDecoration(
                  hintText:"find products",
                  hintStyle: TextStyle(color: Colors.blue),
                  prefixIcon:Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:BorderSide.none, 
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],

                ),
                

              )),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                
                child: IconButton(
                  icon: Icon(Icons.notifications_active_outlined),
                  onPressed: (){},
                  color: Colors.blue,
                  )
              ,),
              
            ],)
          ,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child:Stack(children: [
                  Container(
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Text("a summer surprice",style:TextStyle(fontSize: 20,color: Colors.white),),
                      subtitle: Text("cashback 20%",style:TextStyle(fontSize: 30,color: Colors.white),),
                    ),
                    height: 150,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red),
                  ),
                  Positioned(
                    top: -30,
                    right: -30,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(160)
                      ),
                    ),
                  ),
                  
                      
                    
                
                ])
              
              ,),
              Container(
                
                //padding: EdgeInsets.symmetric(horizontal: ),
                height: 80,
                width: 80,
                
                          child: ListView.builder(
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder:(context, index) {
                            return MaterialButton(

                                  onPressed:(){ controller.goto(index);},
                                  child:Column(
                                  
                              children: [
                                 Container(
                                    height: 60,
                                    width: 100,
                                    padding: EdgeInsets.all(5),
                                
                                decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.circular(30),),
                              
                                    child: items[index]),
                                
                                  Container(
                                    child:Text(name[index]),
                                  )
                              ],
                            ),
                          );
                            
                          },
                          ),
                        
                      ),
                      SizedBox(height: 10,),
                      Text("Products for you:",style: TextStyle(color: Colors.red,fontSize: 25),),
                      SizedBox(
                        
                        child: Stack(children: [
                          Container(height: 70,
                            width: double.infinity,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                      return SizedBox(width: 20,);
                                    },
                                    
                                    
                                    itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:(context, index) {
                                    String img=controller1.product[index]['product_image'];
                              return Container(
                                padding: EdgeInsets.all(5),
                                height: 70,
                                decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.circular(30),),
                              
                                child: 
                                 Image.asset(height: 110,width: 120,"android/assets/images/$img",)
                              
                                ,);},
                            ),
                          ),
                         
                        ],
                           
                        ),
                      ),

                      
                      Text("Offer:",style: TextStyle(color: Colors.red,fontSize: 25),),
                      
                      
                      
                      SizedBox(
                        
                        child: Stack(children: [
                          Container(height: 70,
                            width: double.infinity,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                      return SizedBox(width: 20,);
                                    },
                                    itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:(context, index) {
                                    String img=controller1.product[index+2]['product_image'];
                                    
                              return Container(
                                padding: EdgeInsets.all(5),
                                height: 70,
                                decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.circular(30),),
                              
                                child: 
                                  Image.asset(height: 110,width: 120,"android/assets/images/$img",),
                              
                                );},
                            ),
                          ),
                         
                        ],
                           
                        ),
                      )


        ],
      ),
     ),
    );
  }
}
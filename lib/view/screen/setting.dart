import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      body: Container(
        
        
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 40,),
            Text("Menu",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)) ,
            Container(
              
              height: 90,
              child: Card(
                
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      
                      
                          title:Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),) ,
                         
                          leading:CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "android/assets/images/laptop1.jpg",
                              ),
                          ),
                          
                          trailing:Icon(Icons.arrow_circle_down_sharp)  ,
                         
                           
                          ),
                  ),
                ),
            ),
            
               Row(
                 children: [
                   CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                         title:Icon(Icons.feed,color: Colors.blue,) ,
                          subtitle:Text("Feeds",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                          CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                          title:Icon(Icons.save_rounded,color: Colors.orange,) ,
                          subtitle:Text("Feeds",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                 ],
               ),
            
           Row(
                 children: [
                   CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                         title:Icon(Icons.video_call,color: Colors.green,) ,
                          subtitle:Text("Video",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                          CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                          title:Icon(Icons.games,color: Colors.red,) ,
                          subtitle:Text("Games",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                 ],
               ),
               Row(
                 children: [
                   CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                         title:Icon(Icons.event,color: Colors.blue,) ,
                          subtitle:Text("Event",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                          CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                          title:Icon(Icons.group,color: Colors.orange,) ,
                          subtitle:Text("Group",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                 ],
               ),
               Row(
                 children: [
                   CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                         title:Icon(Icons.memory,color: Colors.lightGreen,) ,
                          subtitle:Text("Memory",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                          CustomCard(
                            height: 90,
                            width: 170,
                            borderRadius: 10,
                            color: Colors.white,
                            hoverColor: Colors.indigo,
                            splashColor: Colors.white,
                            onTap: () {},
                            child: ListTile(
                          
                          title:Icon(Icons.pages,color: Colors.pink,) ,
                          subtitle:Text("Page",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,) ,
                         
                           ),
                          ),
                 ],
               ),
          ],
        )
      ,),
    );
  }
}
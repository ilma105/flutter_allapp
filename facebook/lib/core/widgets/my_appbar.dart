import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stack/core/widgets/messengericon.dart';


class Appbarsec extends StatelessWidget {
  final String tex;
  const Appbarsec({super.key, required this.tex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [

            Row(

              children: [
                Row(
                  children: [
                   const  CircleAvatar(
                    radius: 15.0,
                      backgroundColor: Color.fromARGB(115, 238, 235, 235),
                      child: Icon(Icons.menu,color: Colors.black),

                    ),
                  const  SizedBox(width: 22.0,),
                    Text(
                      "facebook",
                      style: TextStyle(fontSize: 22.sp,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                    ),
                  ],
                ),
            const SizedBox(width: 75.0,),
             
              Row(
                  children: [
             const   MessengerIcon(),
                   const  SizedBox(width: 12.0,),
                      CircleAvatar(
                        radius: 15.0,
                      backgroundColor:const Color.fromARGB(115, 238, 235, 235),
                      child: Image.asset("assests/graphics/common/m.png",width: 18.0,),

                    ),
                    const  SizedBox(width: 12.0,),
                    const  CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Color.fromARGB(115, 238, 235, 235),
                      child: Icon(Icons.search,color: Colors.black),

                    ),
                  ],
                ),
             
             
              ],
            ),
            // Text(
            //   tex,
            //   style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            // ),
       const SizedBox(height: 12.0,),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         const    Icon(Icons.home,size: 30.0,),
         const    SizedBox(width: 20.0,),
        const    Icon(Icons.tv,size: 30.0,),
        const      SizedBox(width: 20.0,),
           
          Image.asset("assests/graphics/common/cart1.png",width: 30.0,),
         const     SizedBox(width: 20.0,),

          Image.asset("assests/graphics/common/game.png",width: 30.0,),

          const   SizedBox(width: 28.0,),
        const    Icon(Icons.notifications,size: 30.0,),
         const    SizedBox(width: 28.0,),
        const    Icon(Icons.menu,size: 30.0,),


           ],
         ),
         
         
          ],
        ),
        //  F:\info related to flutter\ecom\
        // InkWell(
        //   onTap: () => showModalBottomSheet(
        //       context: context,
        //       builder: (context) => Container(
        //             width: double.infinity,
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 12.0),
        //           child: ElevatedButton(onPressed: ()async{
                   
                   
        //           bool islogout= await Provider.of<AuthProvider>(context,listen: false).justlogout();
        //           if(islogout){
        //             context.goNamed(Routenames.logi);
        //           }
        //              }, 
        //           style: ElevatedButton.styleFrom(
        //             backgroundColor: MyColors.bc,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(40.r)
        //             )
        //           ),
        //            child: Text("Logout")
        //                   ),
        //         ),
        //           ),
        //           ),
        //   child: const CircleAvatar(
        //     backgroundImage: AssetImage("assests/graphics/common/waist.png"),
        //   ),
        // ),
     
     
     
     
      ],
    );
  }
}

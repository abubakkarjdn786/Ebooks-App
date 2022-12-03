import 'package:flutter/material.dart';
import 'AccountInfo.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Center(child: Text('Account',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w400),)),
      ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Center(child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image.asset('lib/assets/images/profileimg.png',width: 70,height: 70,))),
                 SizedBox(height: 15,),
                  Text('Hi, Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            Divider(thickness: 2,height: 5,),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: null, child: Text('Account Information',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                  IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
                ],
              ),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                  return AccountInfo();
                }));
              },

            ),

            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('FAQs & Support',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),

            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('Downloads',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),

            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('Audio Player Settings',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),
            
            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('Notification Settings',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),

            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('Shortcuts',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),

            Divider(thickness: 2,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('Invite Friends',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black),)),
                IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios,size: 17,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

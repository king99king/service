
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servies/ColorScheme.dart';

import 'CalenderPage.dart';



class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ubintu'
      ),
      home: mainPage(),
      routes: {
        '/CalenderPage':(context)=>CalenderPage(),
      },
    );
  }
}
class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String selectedType="initial";
  String selectedFrequency="monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
        appBar: AppBar(
          title: Text('Your Plan', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'zcoolk',

          ),

          ),

          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [

          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("Selected Cleaning",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: 'balsam',

                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){changeCleaningType("initial");},
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width*0.43,
                            decoration: BoxDecoration(
                              color: Color(0xffdfdeff),
                              image: DecorationImage(
                                image: AssetImage('images/cleaning.png',),
                              fit:BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Initial Cleaning', style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Anti',
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffededed),
                            ),
                            child: (selectedType=="initial") ? Icon(Icons.check_circle,
                            color: Colors.pinkAccent,
                            size: 30,):Container(),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){changeCleaningType("Upkeep");},
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width*0.43,
                            decoration: BoxDecoration(
                              color: Color(0xffdfdeff),
                              image: DecorationImage(
                                image: AssetImage('images/upkeep.png',),
                                fit:BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Upkeep Cleaning', style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Anti',
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffededed),
                            ),
                            child: (selectedType=="Upkeep") ? Icon(Icons.check_circle,
                              color: Colors.pinkAccent,
                              size: 30,):Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Selected Frequency",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Anti',
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){changeFrequency("weekly");},
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: (selectedFrequency=="weekly") ? BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ):BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3),),
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        alignment: Alignment.center,
                        child: Text("Weekly",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'balsam',
                          color: (selectedFrequency=="weekly") ? Colors.white:Colors.black,
                        ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ),
                    InkWell(
                      onTap: (){changeFrequency("biweekly");},
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: (selectedFrequency=="biweekly") ? BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ):BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3),),
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        alignment: Alignment.center,
                        child: Text("Bi-weekly",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'balsam',
                          color: (selectedFrequency=="biweekly") ? Colors.white:Colors.black,
                        ),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    ),
                    InkWell(
                      onTap: (){changeFrequency("monthly");},
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: (selectedFrequency=="monthly") ? BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ):BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.3),),
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        alignment: Alignment.center,
                        child: Text("Monthly",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'balsam',
                          color: (selectedFrequency=="monthly") ? Colors.white:Colors.black,
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Text('Selected Extras', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'balsam',

                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    extraWidget("fridge","Inside Fridge",true),
                    extraWidget("garocry","Organise",false),
                    extraWidget("blinds","small blinds",false),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    extraWidget("patio","Patio",false),
                    extraWidget("garocry","Grocery",true),
                    extraWidget("blinds","Cutains",false),
                  ],
                ),
                Expanded(child: Container(

                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: openCalenderPage,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          color: purple,
                        ),
                        child: Text("Next",style: TextStyle(
                          fontSize: 19,
                          color:Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'balsam',
                        ),),
                      ),

                    )
                  ],
                ),
              ],
            ),
          ),),
        ],
      ),
    );
  }
  void changeCleaningType(String type){
    selectedType=type;
    setState(() {
    });
  }
  void changeFrequency(String frequency){
    selectedFrequency=frequency;
    setState(() {

    });
  }
  Column extraWidget(String img,String name,bool isSelected){
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [

            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: purple,
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage('images/icon/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true) ? Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.pink,
                  ),
                ),
              ):Container(),
            ),
            SizedBox(height: 5,),
          ],
        ),
        Text(name,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: 'Anti',
        ),
        ),
      ],
    );
  }
  void openCalenderPage(){
    Navigator.pushNamed(context, '/CalenderPage');
  }
}

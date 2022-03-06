import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servies/MainPage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:servies/ColorScheme.dart';


class CalenderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calenderPage(),
      routes: {
        '/MainPage':(context)=>MainPage(),
      },
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
    );
  }
}
class calenderPage extends StatefulWidget {
  @override
  _calenderPageState createState() => _calenderPageState();
}

class _calenderPageState extends State<calenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:purple,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
        title: Text("Select Date",style: TextStyle(
          color: Colors.white,
        ),),
        leading: IconButton(
          padding: EdgeInsets.only(right: 20),
          icon:Icon(Icons.arrow_back,
            color:Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/MainPage');
          },
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            headerStyle: HeaderStyle(
               titleCentered: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
              leftChevronIcon: Icon(Icons.arrow_back_ios,color:Colors.white,size: 15,),
              rightChevronIcon: Icon(Icons.arrow_forward_ios,color:Colors.white,size: 15,),
              leftChevronMargin: EdgeInsets.only(left:70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(

              weekdayStyle: TextStyle(
                color: Colors.white,

              ),

              weekendStyle: TextStyle(
                color: Colors.red,
              ),
            ),
            calendarStyle: CalendarStyle(
              weekendTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Expanded(child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("18 April 2021",style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Column(
                      children: [
                        dayTask("10 am","Michael Hamilton",),
                        dayTask("11 am","jesus david",),
                        dayTask("12 pm","Alexendra jhon",),
                        dayTask("3 pm","Michael Hamilton",),
                        dayTask("4 pm","jesus david",),
                        dayTask("6 pm","Alexendra jhon",),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),),
        ],
      ),
    );
  }
  Row dayTask(String time,String name){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width*0.2,
          child: Text(time,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),textAlign: TextAlign.right,),
        ),
        Expanded(child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(20),
          color:Color(0xffdfdeff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                color: purple,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: 10,),
              Text("Upkeep Cleaning",style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 10,),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.timer,color: Colors.purple,),
                    SizedBox(height: 5,),
                    Text("$time -5pm",style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,

                    ),),
                  ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Clinet Rating",style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(height: 5,),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                height: 0.5,
                color: Colors.grey,

              ),
                SizedBox(height: 15,),
               Row(
                 children: [
                   Icon(Icons.call,color: Colors.pink,),
                  SizedBox(height: 5,),
                  Icon(Icons.mail_outline,color: Colors.pink,),
                   Expanded(child: Container(),
                   ),
                   Text("\$50",style: TextStyle(
                     color:purple,
                     fontSize: 16,
                     fontWeight: FontWeight.w600,
                   ),)
               ],
               ),


            ],

          ),
        ),),
      ],

    );

  }
  void openCalenderPage(){
    Navigator.pushNamed(context, '/MainPage');
  }
}


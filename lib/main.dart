import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Homepase(),

   );
  }

}

class Homepase  extends StatelessWidget {

  mySnackBer(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg)));
  }

  var mylist = [
    {'Name': 'Abir', 'Address': 'Khulna', 'Age': '20'},
    {'Name': 'Sara', 'Address': 'Dhaka', 'Age': '25'},
    {'Name': 'John', 'Address': 'New York', 'Age': '30'},
    {'Name': 'Emily', 'Address': 'London', 'Age': '22'},
    {'Name': 'Rahul', 'Address': 'Mumbai', 'Age': '28'},
    {'Name': 'Aisha', 'Address': 'Dubai', 'Age': '23'},
    {'Name': 'Carlos', 'Address': 'Barcelona', 'Age': '31'},
    {'Name': 'Yuki', 'Address': 'Tokyo', 'Age': '26'},
    {'Name': 'Maria', 'Address': 'Rio de Janeiro', 'Age': '29'},
    {'Name': 'Ahmed', 'Address': 'Cairo', 'Age': '27'},
    {'Name': 'Sophie', 'Address': 'Paris', 'Age': '24'},
    {'Name': 'Alex', 'Address': 'Berlin', 'Age': '32'},
    {'Name': 'Elena', 'Address': 'Moscow', 'Age': '21'},
    {'Name': 'Daniel', 'Address': 'Toronto', 'Age': '33'},
    {'Name': 'Isabella', 'Address': 'Sydney', 'Age': '19'},
    {'Name': 'Chen', 'Address': 'Beijing', 'Age': '34'},
    {'Name': 'Diego', 'Address': 'Buenos Aires', 'Age': '28'},
    {'Name': 'Hana', 'Address': 'Seoul', 'Age': '25'},
    {'Name': 'Gabriel', 'Address': 'Sao Paulo', 'Age': '29'},
    {'Name': 'Lila', 'Address': 'Los Angeles', 'Age': '27'},
    {'Name': 'Ibrahim', 'Address': 'Istanbul', 'Age': '26'},
    {'Name': 'Ava', 'Address': 'Miami', 'Age': '23'},
    {'Name': 'Mohan', 'Address': 'Bangalore', 'Age': '30'},
    {'Name': 'Fiona', 'Address': 'Dublin', 'Age': '22'},
    {'Name': 'Luca', 'Address': 'Rome', 'Age': '31'},
    {'Name': 'Jasmine', 'Address': 'Copenhagen', 'Age': '24'},
    {'Name': 'Oscar', 'Address': 'Stockholm', 'Age': '29'},
    {'Name': 'Nina', 'Address': 'Oslo', 'Age': '28'},
    {'Name': 'Mateo', 'Address': 'Bogota', 'Age': '27'},
    {'Name': 'Zara', 'Address': 'Cape Town', 'Age': '26'}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home_filled),
          backgroundColor: Colors.greenAccent,
          //leading: ,
          title: Text(' Man Information', style: TextStyle(
            color: Colors.pink, fontWeight: FontWeight.bold,),),
        ),
        body: ListView.builder(

          itemCount: mylist.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.man_2_sharp),
              title: Text(mylist[index]['Name']??''),
            subtitle: Text( mylist [index]['Address']??''),
              onTap: (){ mySnackBer(context, [ 'Age : ${mylist[index]['Age']}' ]); },   // age=35




            );


          }


        )
        
        
    );
  }
}

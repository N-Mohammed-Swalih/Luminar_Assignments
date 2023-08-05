// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListViewSeperated(),
  ));
}

class ListViewSeperated extends StatelessWidget {
   ListViewSeperated({super.key});

  var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Seperated Assignment'),
        centerTitle: true,
      ),
      body  : ListView.separated(itemBuilder: (context , index){
        return  ListTile(
            leading: Text(months[index]),
        );
      }, separatorBuilder: (context, index){
        if(index % 4 ==0){
        return Container(
          height: 40,
          color: Colors.red,
          child:Center(child: Text("Advertisement"),
        ),
        );
      }else{
        return SizedBox();
   } 
  },
  itemCount:12)
      );
}
}
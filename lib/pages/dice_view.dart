import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePage();
}


class _DicePage extends State<DicePage>{
  int n =3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice App"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                //Primera forma de aplicar borde circular a mi container
                borderRadius: BorderRadius.circular(20),
                //borderRadius: BorderRadius.only(
                // topRight:  Radius.circular(20),
                 //topLeft: Radius.circular(15)
                //),
                //Segunda forma
                //shape: BoxShape.circle
              ),
              padding: EdgeInsets.all(16),
              width: 200,
              height: 200,
              child: Image.asset("assets/images/dice$n.png"),
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed:(){
                      if(n==1){
                        n=6;
                      }else{
                       n--;
                      }
                      setState(() {});
                    },
                   child: Icon(Icons.arrow_back_ios),
                   ),
                   ElevatedButton(
                    onPressed:(){
                       if(n==6){
                        n=1;
                      }else{
                       n++;
                      }
                      setState(() {});
                    },
                    child: Icon(Icons.arrow_forward_ios))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
              onPressed: (){
                n = Random().nextInt(6)+1;
                setState(() {});
              },
               child: Text("Random"))
          ],
          ),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_listbuilder/model.dart';
import 'package:flutter_listbuilder/my_style.dart';

class Page_2 extends StatefulWidget {
 // const Page_2({Key? key}) : super(key: key);

  // model class variable
  Model? model;

  // Contractor for model class
  Page_2(this.model);

  @override
  _Page_2State createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
             Text('Name :${widget.model!.name}',style: my_style1(26,Colors.red,FontWeight.w600),),
           SizedBox(height: 10,),
            Hero(
              tag: widget.model!,
              child: CircleAvatar(
                backgroundImage: AssetImage('${widget.model!.image}'),
                maxRadius: 120,
              ),
            ),
            SizedBox(height: 10,),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
             child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
               Text('Details :${widget.model!.description}',style: my_style1(16,Colors.black,FontWeight.w600),),
               Spacer(),
               Text('Address :${widget.model!.address}',style: my_style1(16,Colors.pinkAccent,FontWeight.w600),),
             ],),
           )

          ],
        ),
      ),
    );
  }
}


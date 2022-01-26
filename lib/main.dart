import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listbuilder/model.dart';
import 'package:flutter_listbuilder/my_style.dart';
import 'package:flutter_listbuilder/page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: Home_Page(),
    );
  }
}


class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  List <Model> mylist = [];

  _Home_PageState(){
    mylist.add(Model('Mehedi', "Hello World This is Me", 'Mirpur', 'assets/p1.png'));
    mylist.add(Model('fffffffff', " Very Good Girls", 'Kazipara', 'assets/p2.png'));
    mylist.add(Model('ssssssssss', "Bah Bah bah", 'Shawrapara', 'assets/p1.png'));
    mylist.add(Model('Rooman', "He is a Computer Engineer", 'Savar', 'assets/p2.png'));
    mylist.add(Model('Rakesh', "He is Ethical Hacker", 'Asadgate', 'assets/p1.png'));
    mylist.add(Model('Sakil', "Real Fan of SuperMan ", 'Uttora', 'assets/p2.png'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 8,
        title: Text('List Builder'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index){
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 2),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_2(mylist[index])));
                  },
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${mylist[index].name}'),
                    SizedBox(height: 4,)
                  ],
                  ),
                  leading: Hero(
                    tag: mylist[index],
                    child: CircleAvatar(
                      backgroundImage: AssetImage('${mylist[index].image}'),
                      maxRadius: 87,
                    ),
                  ),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Details :${mylist[index].description}'),
                    Spacer(),
                    Text('Address :${mylist[index].address}'),

                  ],),
                  trailing: Column(
                    children: [
                      SizedBox(height: 8,),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            mylist.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.auto_delete_outlined,color: Colors.pinkAccent,size: 26,),
                      ),
                    ],
                  )

                );
            }),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 List<int> _counters =[0,0,0,0];
  List<String> _azkar =['سبحان الله','الحمد لله','لا إاله إلا الله','الله أكبر'];
 int _selected =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text('${_azkar[_selected]}',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Text("السبحة الالكترونية", style: TextStyle(color: Colors.purple,fontSize: 30.0),),flex: 1,),
            Expanded(child: Center(
              child: Text('${_counters[_selected]}',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize:40 ),),),flex:2,),
            Expanded(child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration:BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(onPressed: (){
                        setState(() {
                          _counters[_selected]++;
                        });
                      }, child: Icon(Icons.add,color: Colors.black,))),
                  Container(width: 12.0,),
                  Container(
                      decoration:BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(onPressed: (){
                        setState(() {
                          _counters[_selected] = 0;
                        });
                      }, child: Text('Reset',style: TextStyle(color: Colors.black,fontSize: 18.0),))),
                ],
              ),
            ),flex: 1,),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: Row(
                    children: [
                      Checkbox(
                        value: _selected == 0,
                        onChanged: (cond){
                          if(cond==true){
                            setState(() {
                              _selected =0;
                            });
                          }
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 12.0),child: Text("${_azkar[0]}",style: TextStyle(fontSize: 30.0,),),)
                    ],
                  ),flex: 1,),
                  Expanded(child: Row(
                    children: [
                      Checkbox(
                        value: _selected == 1,
                        onChanged: (cond){
                          if(cond==true){
                            setState(() {
                              _selected =1;
                            });
                          }
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 12.0),child: Text("${_azkar[1]}",style: TextStyle(fontSize: 30.0,),),)
                    ],
                  ),flex: 1,),
                  Expanded(child: Row(
                    children: [
                      Checkbox(
                        value: _selected == 2,
                        onChanged: (cond){
                          if(cond==true){
                            setState(() {
                              _selected =2;
                            });
                          }
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 12.0),child: Text("${_azkar[2]}",style: TextStyle(fontSize: 30.0,),),)
                    ],
                  ),flex: 1,),
                  Expanded(child: Row(
                    children: [
                      Checkbox(
                        value: _selected == 3,
                        onChanged: (cond){
                          if(cond==true){
                            setState(() {
                              _selected =3;
                            });
                          }
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 12.0),child: Text("${_azkar[3]}",style: TextStyle(fontSize: 30.0,),),)
                    ],
                  ),flex: 1,),
                ],
              ),
            ),
            flex: 4,)

          ],
        ),
      ),
    );
  }
}


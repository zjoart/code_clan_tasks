import 'package:code_clan_second_tasks/tasks_srcs/tasks_four.dart';
import 'package:code_clan_second_tasks/tasks_srcs/tasks_three.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Code clan tasks ',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        home: FourthTasks());
  }
}

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);

  @override
  _SecondTaskState createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           iconTheme: IconThemeData(color: Colors.white),
          title: Text('Home Screen', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_rounded, color: Colors.white))
          ],
        ),
        
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  colorBox(Colors.purple, 'BURGER'),
                  colorBox(Colors.green, 'SOUP'),
                ],
              ),
            
               Row(
                children: [
                  colorBox(Colors.orange, 'SOFT DRINK'),
                  colorBox(Colors.pink, 'BEER'),
                ],
              ),
               Row(
                children: [
                  colorBox(Colors.blue.shade800, 'PIZZA'),
                  colorBox(Colors.indigo, 'DOUGHNUT'),
                ],
              ),
               Row(
                children: [
                  colorBox(Colors.blue.shade300, 'RICE'),
                  colorBox(Colors.red, 'BEANS'),
                ],
              ),
            ],
          ),
        ));
  }

  Widget colorBox(Color color, String text) {
    return Container(
            width: MediaQuery.of(context).size.width / 100 * 50,
            height: 180,
            decoration: BoxDecoration(
              color: color,
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text, style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                 Text('⭐⭐⭐'),
                  Text('1\$ - 10\$', style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )),
              ],
            )
          );
  }
}

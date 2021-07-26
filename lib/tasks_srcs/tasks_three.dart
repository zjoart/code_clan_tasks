import 'package:code_clan_second_tasks/helpers.dart/images.dart';
import 'package:flutter/material.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({Key? key}) : super(key: key);

  @override
  _ThirdTaskState createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset(
                sen,
              ),
              SizedBox(
                height: 50,
              ),
              Text('COVID-19',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 50,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the priniting and typesetting industry , Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. ',
                
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: w,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueAccent[700],
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

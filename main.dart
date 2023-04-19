import 'package:flutter/material.dart';

void main() {
  runApp(basketball_pints_counter());
}

class basketball_pints_counter extends StatefulWidget {
  @override
  State<basketball_pints_counter> createState() => _basketball_pints_counterState();
}

class _basketball_pints_counterState extends State<basketball_pints_counter> {
  int team_a_points = 0;

  int team_b_points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 17, 42),
          title: Text('Basketball Score Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$team_a_points',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_a_points++;
                          });
                        },
                        child: Text('Add 1 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_a_points+=2;
                          });
                        },
                        child: Text('Add 2 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_a_points += 3 ;
                          });
                        },
                        child: Text('Add 3 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  child: VerticalDivider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ),

                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$team_b_points',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_b_points++;
                          });
                        },
                        child: Text('Add 1 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_b_points+=2;
                          });
                        },
                        child: Text('Add 2 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team_b_points+=3;
                          });
                        },
                        child: Text('Add 3 Point',style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 153, 245),
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            minimumSize: Size(130, 40)),
                      )
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
                      onPressed: () {
                        setState(() {
                          team_a_points=0;
                          team_b_points=0;
                        });
                      },
                      child: Text('Reset',style: TextStyle(fontSize: 17),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 215, 215, 215),
                          foregroundColor: Colors.black,
                          minimumSize: Size(130, 40)),
                    )
          ],
        ),
      ),
    );
  }
}

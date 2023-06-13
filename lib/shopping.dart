import 'package:flutter/material.dart';


class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping>  createState() => _Shopping();
}
enum Drink { BlancoTequilla, OrangeLiqueur, FigSyrup, Honey, TripleSec, ClubSoda, Sugar }
class _Shopping extends State<Shopping> {
  Drink? _drink = Drink.BlancoTequilla;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          color: Colors.grey.shade900,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:<Widget> [
                  Text(
                    'Fresh Feg Margarita',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox

                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'BlancoTequilla',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Radio<Drink>(
                      value: Drink.BlancoTequilla,
                      groupValue: _drink,
                      activeColor: Colors.amber,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),

                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'OrangeLiqueur',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Radio<Drink>(
                      value: Drink.OrangeLiqueur,
                      groupValue: _drink,
                      activeColor: Colors.amber,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),
                  
                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'FigSyrup',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),                    leading: Radio<Drink>(
                      value: Drink.FigSyrup,
                      groupValue: _drink,
                    activeColor: Colors.amber,
                    onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'Honey',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Radio<Drink>(
                      value: Drink.Honey,
                      groupValue: _drink,
                      activeColor: Colors.amber,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'TripleSec',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Radio<Drink>(
                      value: Drink.TripleSec,
                      groupValue: _drink,
                      activeColor: Colors.amber,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'ClubSoda',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Radio<Drink>(
                      value: Drink.ClubSoda,
                      activeColor: Colors.amber,
                      groupValue: _drink,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                 //   title: const Text('Sugar'),
                  title:  Text(
                      // offerPercentage[i1], // List of Offers precentages
                      'Sugar',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    leading: Radio<Drink>(
                      value: Drink.Sugar,
                      activeColor: Colors.amber,
                      groupValue: _drink,
                      onChanged: (Drink? value) {
                        setState(() {
                          _drink = value;
                        });
                      },
                    ),

                  ),


                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center
      )
    );//Scaffold

  }
}
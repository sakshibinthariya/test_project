import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_project/drink_list_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_project/shopping.dart';
import 'package:test_project/drink_list_model.dart';



class Discover extends StatefulWidget {
const Discover({Key? key}) : super(key: key);

@override
State<Discover>  createState() => _Discover();
}

class _Discover extends State<Discover> {
  PageController controller = PageController();
  int _currentIndex = 0;
  late DrinkListsModel? _drinkLists;
  late DrinkListsModel? _drinkListsShakes;
  late final imageUrl = <Widget>[];
  late final imageUrlShakes = <Widget>[];

  List<String> offerPercentage = ['10%', '30%', '50%','60%', '30%', '50%'];
  List<String> offerImage = [
    'assets/images/candle_top_one.png',
    'assets/images/candle_top_one.png',
    'assets/images/candle_top_one.png',
    'assets/images/candle_top_one.png',
    'assets/images/candle_top_one.png',
    'assets/images/candle_top_one.png',
  ];

  @override
  void initState() {
    /// initialized [conroller] after the screen is loaded
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    /// [conroller] remove from the widget tree permanantly after the screen is closed
    controller.dispose();
    super.dispose();
  }


  @override
Widget build(BuildContext context) {
return Container(
  child: Scaffold(
    backgroundColor: Colors.black,
    body: Stack(
      children: [
    Column(
    children: [
      Container(
        height: 425, // total height of the container [Image Box]
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: offerPercentage.length,
              scrollDirection:
              Axis.horizontal, // scrolling direction of image
              physics: ScrollPhysics(), // scrolling behaviour
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, i1) {
                return Stack(
                  children: [
                    Image.asset(
                      offerImage[i1], // List of Offers precentages
                      width: MediaQuery.of(context).size.width,
                      colorBlendMode: BlendMode.softLight,
                    //  color: Colors.black.withOpacity(0.8),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Featured Recipes',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Text(
                           // offerPercentage[i1], // List of Offers precentages
                            'Harvey',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            // offerPercentage[i1], // List of Offers precentages
                            'Wallbanger',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Row(
                            children:[
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10,
                                    left: 15,
                                    bottom: 10),
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  unratedColor:
                                  Colors.grey.shade700,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 9,
                                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) =>
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                  padding:
                                  EdgeInsets.only(top: 0),
                                  child: Text(
                                    'Strong',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                        Colors.white),
                                  )),
                            ],
                          ),
                              SizedBox(
                                width: 12,
                              ),
                              Row(

                                children: [
                                  Icon(Icons.favorite,color: Colors.white, size: 12),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('850',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                ],
                              ),
                        ]  )

                        ],
                      ),
                    ), //  end offers
                  ],
                );
              },
            ),


            Positioned(
              bottom: 15, // Position form Bottom
              right: 15, // Position from Right
              child: Container(
                height: 15,
                child: ListView.builder(
                  itemCount: offerPercentage.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int i2) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 5,
                        width: 15,
                        decoration: _currentIndex == i2
                            ? BoxDecoration(
                            color: Colors
                                .white12,
                            // Selected Slider Indicator Color
                            borderRadius: BorderRadius.circular(15))
                            : BoxDecoration(
                            color: Colors
                                .white, // Unselected Slider Indicator Color
                            shape: BoxShape
                                .circle // shape of Unselected indicator
                        ),
                      ),
                    );
                  },
                ),
              ),
            )

            // end indicator
          ],
        ),
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Todays Recipes',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'fonts/Kanit-Medium.ttf',
                    color: Colors.white70,
                  ))),
          Padding(
              padding: EdgeInsets.only(right: 25),
              child: TextButton(
                onPressed: () {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => Shopping()));

                 /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ()),
                  );*/
                },
                child: Text('View all',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'fonts/Kanit-Medium.ttf',
                      color: Colors.white38,
                    )),
              ))
        ],
      ),
    Container(
        height: 280,
        width: double.infinity,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                height: 100,
                width: 200,
                //  color: Colors.yellow,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(
                        'assets/images/cold_drinks.png'), fit: BoxFit.fill,)
                ),

              ));
        })),

  ]  ),



    ]
    )
    )
);
  }

}

class MyImageView extends StatelessWidget {
  String imgPath;
  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
        width: double.infinity,
       // margin: EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Image.asset(imgPath,),
        )
    );
  }
}
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile>  createState() => _Profile();
}

class _Profile extends State<Profile> {
  PageController controller = PageController();
  int _currentIndex = 0;
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
      body: SafeArea(
        child: Container(
          height: 400, // total height of the container [Image Box]
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
                        color: Colors.black.withOpacity(0.8),
                        fit: BoxFit.cover,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              offerPercentage[i1], // List of Offers precentages
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'discount on your first order',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'discount on your first order',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'discount on your first order',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
              ) // end indicator
            ],
          ),
        ),
      ),
    ) );
  }
}
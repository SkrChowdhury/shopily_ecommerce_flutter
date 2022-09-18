import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text(
          'Shopily'.toUpperCase(),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'E-Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: 'Profile',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/circular-profile.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Deliver to',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            'Times Square',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.notification_add_rounded,
                          color: Colors.green),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        primary: Colors.white, // <-- Button color
                        onPrimary:
                            Colors.lightGreen.shade300, // <-- Splash color
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.shopping_cart, color: Colors.green),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15),
                          primary: Colors.white, // <-- Button color
                          onPrimary:
                              Colors.lightGreen.shade300, // <-- Splash color
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SearchBarAnimation(
                    buttonColour: Colors.white,
                    buttonBorderColour: Colors.green,
                    buttonIconColour: Colors.green,
                    trailingIconColour: Colors.green,
                    secondaryButtonIconColour: Colors.green,
                    textEditingController: TextEditingController(),
                    isOriginalAnimation: true,
                    enableKeyboardFocus: true,
                    onExpansionComplete: () {
                      debugPrint(
                          'do something just after searchbox is opened.');
                    },
                    onCollapseComplete: () {
                      debugPrint(
                          'do something just after searchbox is closed.');
                    },
                    onPressButton: (isSearchBarOpens) {
                      debugPrint(
                          'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Special Offers',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade500,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '30%',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 70),
                    ),
                    SizedBox(
                      width: 160.0,
                      child: Text(
                        'Discount only valid for today!'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/onboard3bg.png',
                    height: 180.0,
                    width: 180.0,
                  ),
                )
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: GridView.count(
                padding: EdgeInsets.all(10.0),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 4,
                children: <Widget>[
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/burgers.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Burgers',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/pizzas.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Pizzas',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/noodles.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Noodles',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/meat.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Meat',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/vegetables.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Vegetables',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/desserts.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Desserts',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/drinks.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'Drinks',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/more-foods.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'More',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Discount Gauranteed',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 240.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan.withOpacity(.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140.0,
                          margin: EdgeInsets.only(bottom: 5.0),
                          child: Image.asset("assets/onboard1bg.png"),
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            image: const DecorationImage(
                              image: NetworkImage(''),
                              fit: BoxFit.cover,
                            ), //DecorationImage//Border.all
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green.shade200,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ), //Offset
                                blurRadius: 8.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow                        //BoxShadow
                            ],
                          ), //BoxDecoratio
                        ),
                        const Text(
                          'Mixed Salad Bomb',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '1.5 km',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 12.0),
                              padding: EdgeInsets.only(left: 10.0),
                              child: const Text(
                                '4.8 (12k)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text(
                                '\$6.00',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(
                                          Icons.bike_scooter_rounded,
                                          color: Colors.green,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$2.00 ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 24.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan.withOpacity(.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140.0,
                          margin: EdgeInsets.only(bottom: 5.0),
                          child: Image.asset("assets/onboard4bg.png"),
                          decoration: BoxDecoration(
                            color: Colors.teal.shade500,
                            image: const DecorationImage(
                              image: NetworkImage(''),
                              fit: BoxFit.cover,
                            ), //DecorationImage//Border.all
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.teal.shade200,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ), //Offset
                                blurRadius: 8.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow                        //BoxShadow
                            ],
                          ), //BoxDecoratio
                        ),
                        const Text(
                          'Mixed Salad Bomb',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '1.5 km',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 12.0),
                              padding: EdgeInsets.only(left: 10.0),
                              child: const Text(
                                '4.8 (12k)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text(
                                '\$6.00',
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(
                                          Icons.bike_scooter_rounded,
                                          color: Colors.teal,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$2.00 ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.red,
                              size: 24.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurpleAccent.withOpacity(.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140.0,
                          margin: EdgeInsets.only(bottom: 5.0),
                          child: Image.asset("assets/onboard3bg.png"),
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent.shade200,
                            image: const DecorationImage(
                              image: NetworkImage(''),
                              fit: BoxFit.cover,
                            ), //DecorationImage//Border.all
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.deepPurpleAccent.shade100,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ), //Offset
                                blurRadius: 8.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow                        //BoxShadow
                            ],
                          ), //BoxDecoratio
                        ),
                        const Text(
                          'Mixed Salad Bomb',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '1.5 km',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 12.0),
                              padding: EdgeInsets.only(left: 10.0),
                              child: const Text(
                                '4.8 (12k)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text(
                                '\$6.00',
                                style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black54, width: 2))),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Icon(
                                          Icons.bike_scooter_rounded,
                                          color: Colors.deepPurpleAccent,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$2.00 ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 24.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Discount Gauranteed',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green),
                      height: 50,
                      width: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.all_out_sharp,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              'All',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      height: 50,
                      width: 110,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bug_report_sharp,
                              size: 30,
                              color: Colors.green,
                            ),
                            Text(
                              'Burgers',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            )
                          ]),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      height: 50,
                      width: 110,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            )
                          ]),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      height: 50,
                      width: 140,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_location,
                              size: 30,
                              color: Colors.green,
                            ),
                            Text(
                              'Vegetables',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                        children: [
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
                children: [
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
                    Text(
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
                        style: TextStyle(
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
              height: MediaQuery.of(context).size.height,
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
                        Text(
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
                        Text(
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
                        Text(
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
                        Text(
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
                        Text(
                          'Vegetables',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
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

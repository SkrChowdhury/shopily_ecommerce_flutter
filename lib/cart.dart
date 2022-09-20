import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  image: const DecorationImage(
                    image: NetworkImage(''),
                    fit: BoxFit.cover,
                  ), //DecorationImage//Border.all
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow                        //BoxShadow
                  ],
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 120.0,
                      width: 160.0,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Image.asset("assets/meat.png"),
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
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Meat Ball ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 5.0,
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
                          SizedBox(
                            height: 5.0,
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
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
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
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  image: const DecorationImage(
                    image: NetworkImage(''),
                    fit: BoxFit.cover,
                  ), //DecorationImage//Border.all
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow                        //BoxShadow
                  ],
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 120.0,
                      width: 160.0,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Image.asset("assets/pizzas.png"),
                      decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        //DecorationImage//Border.all
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
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pizza Large Size',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 5.0,
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
                          SizedBox(
                            height: 5.0,
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
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
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
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  image: const DecorationImage(
                    image: NetworkImage(''),
                    fit: BoxFit.cover,
                  ), //DecorationImage//Border.all
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow                        //BoxShadow
                  ],
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 120.0,
                      width: 160.0,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Image.asset("assets/burgers.png"),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade500,
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
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Spicy Burger',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 5.0,
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
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Container(
                                child: const Text(
                                  '\$6.00',
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.black54, width: 2))),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
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
                                            color: Colors.indigo,
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
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  image: const DecorationImage(
                    image: NetworkImage(''),
                    fit: BoxFit.cover,
                  ), //DecorationImage//Border.all
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow                        //BoxShadow
                  ],
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 120.0,
                      width: 160.0,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Image.asset("assets/drinks.png"),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade300,
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
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Drinks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 5.0,
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
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Container(
                                child: const Text(
                                  '\$6.00',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.black54, width: 2))),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
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
                                            color: Colors.purple,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

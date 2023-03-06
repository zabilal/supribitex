import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dropdown_controller.dart';
import '../controllers/home_controller.dart';

class DashboardPage extends GetView<HomeController> {
  // const DashboardPage({Key? key}) : super(key: key);
  @override
//   var isExpanded = false.obs;

//   void toggleExpanded() {
//     isExpanded.value = !isExpanded.value;
//   }
// }

// class ExpandableCardWidget extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final IconData icon;

//   ExpandableCardWidget({required this.title, required this.subtitle, required this.icon});
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        margin: EdgeInsets.all(15),
        height: 120,
        child: Card(
          margin: EdgeInsets.all(5),
          color: Color.fromARGB(255, 226, 239, 252),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: Color.fromARGB(255, 55, 69, 153), // set the border color
              width: 0.5,
            ),
          ), // set the border width
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListTile(
                title: Text(
                  'Fauzy! You have five unread messages',
                  style: TextStyle(
                      color: Color.fromARGB(255, 11, 117, 209), fontSize: 15),
                ),
              ),
              Row(
                children: [
                  ButtonBar(children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // do something
                      },
                      child: Text(
                        'Close',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 223, 205,
                            51), // set the background color of the button
                      ),
                    )
                  ]),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "View",
                      style: TextStyle(
                          color: Color.fromARGB(255, 38, 98, 226),
                          fontSize: 15),
                    ),
                  ) // set the text color,)
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Dashboard",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 70, 70),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Good afternoon,',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Fauzy Musty',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' Your Reserved Account is: \n',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: ' 8734929035 ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Bank: ',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Wema Bank ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 102, 41, 19),
                                ),
                              ),
                              TextSpan(
                                text: 'Account Name',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: ' SUPRIBITEX-Fau',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 83, 24, 2),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Account Balance Summary',
                style: TextStyle(
                    color: Color.fromARGB(255, 73, 70, 70),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 9, // set elevation to a value to show shadow
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  color: Color.fromARGB(255, 226, 239, 252),
                  padding: EdgeInsets.only(top: 10, left: 10),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.balance),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Available Balance",
                            style: TextStyle(
                              // color: Colors.black,
                              fontWeight: FontWeight.bold,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u20A60.00",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(
                                  255,
                                  10,
                                  112,
                                  13,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Bonus',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A6500.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 218, 200, 44),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pending',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A6500.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'GiftCard Exchange Summary',
              style: TextStyle(
                  color: Color.fromARGB(255, 73, 70, 70),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 20, // set elevation to a value to show shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 10, 112, 13),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Successful Excahnge Rate',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A650.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 20, // set elevation to a value to show shadow
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 218, 200, 44),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pending Exchange Rate',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A60.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // SizedBox(
      //   height: 5,
      // ),
      InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 20, // set elevation to a value to show shadow
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              color: Color.fromARGB(255, 240, 217, 174),
              padding: EdgeInsets.only(top: 10, left: 10),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.card_giftcard),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Declined Exchange",
                        style: TextStyle(
                          // color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "0 Trade",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Utility Summary',
              style: TextStyle(
                  color: Color.fromARGB(255, 73, 70, 70),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 20, // set elevation to a value to show shadow
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(
                                  255,
                                  10,
                                  112,
                                  13,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Airtime Topup',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A60.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 20, // set elevation to a value to show shadow
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100, // specify the desired height
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color.fromARGB(255, 218, 200, 44),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Internet Data',
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\u20A60.00',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    color: Color.fromARGB(255, 226, 239, 252),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Column(children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 20, // set elevation to a value to show shadow
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                color: Color.fromARGB(255, 226, 239, 252),
                padding: EdgeInsets.only(top: 10, left: 10),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.electric_moped),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Electricity Bill",
                          style: TextStyle(
                            // color: Colors.black,
                            fontWeight: FontWeight.bold,
                            // fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\u20A60.00",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 20, // set elevation to a value to show shadow
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                color: Color.fromARGB(255, 226, 239, 252),
                padding: EdgeInsets.only(top: 10, left: 10),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.data_object),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cable TV Subscription",
                          style: TextStyle(
                            // color: Colors.black,
                            fontWeight: FontWeight.bold,
                            // fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\u20A60.00",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 20, // set elevation to a value to show shadow
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                color: Color.fromARGB(255, 226, 239, 252),
                padding: EdgeInsets.only(top: 10, left: 10),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.swap_calls),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Airtime Swap",
                          style: TextStyle(
                            // color: Colors.black,
                            fontWeight: FontWeight.bold,
                            // fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\u20A60.00",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 161, 158, 158), // set the border color
              width: 0.5,
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    "Refer Us & Earn",
                    style: TextStyle(
                      color: Color.fromARGB(255, 73, 70, 70),
                      // fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                              text:
                                  'Use the link below link to invite your friends and family.',
                              style: TextStyle(color: Colors.black),
                            ))),
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Invite",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Invitation Link',
                          contentPadding: EdgeInsets.all(8.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: controller.text));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Copied'),
                          ),
                        );
                      },
                      child: Text("Copy Link"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 161, 158, 158), // set the border color
              width: 0.5,
            ),
          ),
          child: Container(
            color: Color.fromARGB(255, 233, 241, 243),
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone_android),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Total Referred",
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "None",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Last Referred")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 161, 158, 158), // set the border color
              width: 0.5,
            ),
          ),
          child: Container(
            height: 180,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We're here to help you",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                            child: Text(
                                "Ask a question or request for a support ticket\nmanage your request and report any issues\nOur support team is always available on ground to attend to you via email")),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Get Support Now!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        )
      ]),
    ])));
  }
}

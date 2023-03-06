import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/airtime_topup_controller.dart';

class AirtimeTopupView extends StatefulWidget {
  @override
  _AirtimeTopupViewState createState() => _AirtimeTopupViewState();
}

class _AirtimeTopupViewState extends State<AirtimeTopupView> {
  final TextEditingController amountController = TextEditingController();
  int selectedAmount = 0; // declare selectedAmount variable here

  bool isCheckedMTN = false;
  bool isCheckedGLO = false;
  bool isCheckedETI = false;
  bool isCheckedAIRTEL = false;

  FocusNode amountFocusNode = FocusNode();

  void updateAmount(int amount) {
    setState(() {
      selectedAmount = amount;
      amountController.text = 'amount';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 25,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Center(
              child: Text(
                "Mobile Recharge",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose Amount To Recharge",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 100;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 100
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A6100')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 250;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 250
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A6250')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 500;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 500
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A6500')),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 1000;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 1000
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A61,000')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 1500;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 1500
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A61,500')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAmount = 2000;
                            amountController.text = '$selectedAmount';
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(
                                255,55,69,153,
                              ),
                              width: 0.5,
                            ),
                          ),
                          color: selectedAmount == 2000
                              ? Colors.blue
                              : Colors.white,
                          child: Center(child: Text('\u20A62,000')),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                child: Text("Or Enter Amount Directly",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              height: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      ThousandsFormatter(),
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '\u20A6',
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Amount',
                    ),
                    focusNode: amountFocusNode,
                    controller: amountController,
                    onTap: () {
                      amountController.clear();
                      FocusScope.of(context).requestFocus(amountFocusNode);
                    },
                  ),
                ),
                Text(
                  'Maximum Amount: 30,000 NGN',
                  style: TextStyle(color: Colors.red),
                ),
                Text('Minimum Amount: 100 NGN'),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Phone Number",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(),
                          hintText: '01234567879',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Network",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isCheckedMTN,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedMTN = value ?? true;
                                  isCheckedGLO = false;
                                  isCheckedETI = false;
                                  isCheckedAIRTEL = false;
                                });
                              },
                            ),
                            Text('MTN')
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/download.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedGLO,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedGLO = value ?? true;
                                isCheckedMTN = false;
                                isCheckedETI = false;
                                isCheckedAIRTEL = false;
                              });
                            },
                          ),
                          Text('GLO')
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/glo.jpeg"),
                              fit: BoxFit.fill),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedETI,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedETI = value ?? true;
                                isCheckedMTN = false;
                                isCheckedGLO = false;
                                isCheckedAIRTEL = false;
                              });
                            },
                          ),
                          Text('ETISALAT')
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/etis.png"),
                              fit: BoxFit.fill),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedAIRTEL,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedAIRTEL = value ?? true;
                                isCheckedMTN = false;
                                isCheckedGLO = false;
                                isCheckedETI = false;
                              });
                            },
                          ),
                          Text('AIRTEL')
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/airtel.jpeg"),
                              fit: BoxFit.fill),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 15),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement button functionality
                },
                child: Text('Continue to Recharge'),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(50)),
                ),
              ),
            ),
          ]),
        )));
  }
}

class ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
    if (text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    int value = int.parse(text.replaceAll(',', ''));
    String formatted = NumberFormat('#,##0.00').format(value);

    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supribitex/app/modules/activities_log/views/activities_log_view.dart';
import 'package:supribitex/app/modules/airtime_topup/views/airtime_topup_view.dart';
import 'package:supribitex/app/modules/deposit_naira/views/deposit_naira_view.dart';
import 'package:supribitex/app/modules/faq/views/faq_view.dart';
import 'package:supribitex/app/modules/home/controllers/dashboard.dart';
import 'package:supribitex/app/modules/message_inbox/views/message_inbox_view.dart';
import 'package:supribitex/app/modules/my_account/views/my_account_view.dart';
import 'package:supribitex/app/modules/referal_system/views/referal_system_view.dart';
import 'package:supribitex/app/modules/support_ticket/views/support_ticket_view.dart';
import 'my_drawer_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.my_account) {
      container = MyAccountView();
    } else if (currentPage == DrawerSections.referal_system) {
      container = ReferalSystemView();
    } else if (currentPage == DrawerSections.activities_log) {
      container = ActivitiesLogView();
    } else if (currentPage == DrawerSections.message_box) {
      container = MessageInboxView();
    } else if (currentPage == DrawerSections.support_ticket) {
      container = SupportTicketView();
    } else if (currentPage == DrawerSections.faq) {
      container = FaqView();
      //  Navigator.push(
      // context,
      // MaterialPageRoute(
      // builder: (context) => loginscreen()));
    }
    return LayoutBuilder(
  builder: (context, constraints) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 97, 226),
        toolbarHeight: constraints.maxHeight * 0.1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage("assets/images/logo.png")),
            Flexible(
              flex: 1,
              child: Container(
                height: constraints.maxHeight * 0.08,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/image1.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.notifications)],
              ),
            )
          ],
        ),

        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        )
      ));
    });
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          Center(
              child: Text(
            'MENU',
            style: TextStyle(fontSize: 10),
          )),
          SizedBox(
            height: 5,
          ),
          menuItem(1, "Dashboard", Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          ExpansionTile(
            title: Text('Deposit'),
            leading: Icon(
              Icons.payment,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Deposit Naira"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Deposit Log"),
                  onTap: () {},
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Trade GiftCards'),
            leading: Icon(
              Icons.card_giftcard,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Buy Gift-Card"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Sell Gift-Card"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Exchange Log"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Withdrawal'),
            leading: Icon(
              Icons.money_off,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("New Request"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Withdrawal Log"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Convert Bonus"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Fund Transfer'),
            leading: Icon(
              Icons.money,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Transfer Fund"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Transfer Log"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Utility'),
            leading: Icon(
              Icons.payment,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Airtime Topup"),
                  onTap: () {
                    Get.to(AirtimeTopupView());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Internet Data"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Electricity Bill"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              ListTile(
                minLeadingWidth: 30,
                title: Text("Cable Tv Subscriptions"),
                onTap: () {
                  //action on press
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Airtime Swap"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Utility History'),
            leading: Icon(
              Icons.history,
              color: Colors.blue,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Cable History"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Electricity History"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Recharge History"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Data History"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text("Swap History"),
                  onTap: () {
                    //action on press
                  },
                ),
              ),
            ],
          ),
          menuItem(15, "My Account", Icons.account_balance,
              currentPage == DrawerSections.my_account ? true : false),
          menuItem(3, "Account", Icons.account_box,
              currentPage == DrawerSections.account ? true : false),
          menuItem(4, "Referal System", Icons.system_security_update,
              currentPage == DrawerSections.referal_system ? true : false),
          menuItem(5, "Activities Log", Icons.local_activity,
              currentPage == DrawerSections.activities_log ? true : false),
          SizedBox(
            height: 20,
          ),
          Text(
            'MESSAGE CENTER',
            style: TextStyle(fontSize: 10),
          ),
          menuItem(6, "Message Inbox", Icons.inbox,
              currentPage == DrawerSections.message_box ? true : false),
          menuItem(7, "Support Ticket", Icons.support,
              currentPage == DrawerSections.support_ticket ? true : false),
          menuItem(8, "FAQ", Icons.question_mark,
              currentPage == DrawerSections.faq ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Get.to(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.my_account;
            } else if (id == 3) {
              currentPage = DrawerSections.account;
            } else if (id == 4) {
              currentPage = DrawerSections.referal_system;
            } else if (id == 5) {
              currentPage = DrawerSections.activities_log;
            } else if (id == 6) {
              currentPage = DrawerSections.message_box;
            } else if (id == 7) {
              currentPage = DrawerSections.support_ticket;
            } else if (id == 8) {
              currentPage = DrawerSections.faq;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                // flex: 5,
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 9,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 83, 81, 81),
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  trade_giftcard,
  withdraw,
  fund_transfer,
  utility,
  utility_history,
  my_account,
  account,
  referal_system,
  activities_log,
  message_box,
  support_ticket,
  faq,
  // Deposit
  deposit_naira,
  deposit_log,
  Buy_giftcard,
  sell_giftcard,
  exchange_log,
  // Withdraw
  new_request,
  withdrawal_log,
  convert_bonus,
  // Fund Transfer
  transfer_fund,
  transfer_log,
  // Utility
  airtime_topup,
  internet_data,
  electricity_bill,
  card_tv_subscription,
  airtime_swap,

  // Utility History
  card_history,
  electricity_history,
  recharge_history,
  data_history,
}

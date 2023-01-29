import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/widgets/ListTileSplash.dart';
import 'package:insurancemockapp/ui/widgets/divider.dart';

import '../../utils/themes/light_theme.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Icon(
            Icons.cloud_circle_rounded,
            size: 28,
            color: Colors.black,
          ),
        ),
        leadingWidth: 23,
        title: const Text(
          "cuvva",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 38,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help,
              color: colorPrimary,
              size: 30,
            ),
          )
        ],
      ),

      // add screen padding

      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              // enter vehicle reg input

              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 58,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Text(
                          "GH",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: "ENTER VEHICLE REG",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // menu to buy insurance policy and file a claim

            RefreshIndicator(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    "Car insurance",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        ListTileSplash(
                          leading: Icon(
                            Icons.attach_money_rounded,
                            size: 35,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          title: Text("Buy insurance policy"),
                          subtitle: Text("Get an insurance policy for yourself"),
                          onTap: () {
                            Navigator.pushNamed(context, "/buy-insurance");
                          },
                        ),
                        DividerHorizontal(),
                        ListTileSplash(
                          leading: Icon(
                            Icons.cases_rounded,
                            size: 35,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          title: Text("File a claim"),
                          subtitle: Text("Report accidents here"),
                          onTap: () {
                            Navigator.pushNamed(context, "/file-claim");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              onRefresh: () {
                return Future.delayed(Duration(seconds: 1), () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

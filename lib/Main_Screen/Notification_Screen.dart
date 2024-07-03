import 'package:flutter/material.dart';

import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/TextStyle.dart';
import 'CustomAppBar.dart';

class Notification_Screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Notification_Screen({required this.scaffoldKey, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: CustomAppBar(scaffoldKey: scaffoldKey),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              color: AppColors.whitecolor,
              margin: EdgeInsets.all(8.0),
              elevation: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.buttoncolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        '25/03/2024(Tuesday)',
                        style: TextStyles.black2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 5, bottom: 10, right: 10),
                    child: Text(
                      'Good morning all members play all market game',
                      style: TextStyles.black,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/Image.dart';
import '../All_Custom_Faction/TextStyle.dart';
import 'CustomAppBar.dart';

class Home_Screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Home_Screen({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: CustomAppBar(scaffoldKey: scaffoldKey),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Container(
                  height: constraints.maxWidth < 300 ? 200 : 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.buttoncolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BHARAT - SATTA\nONLINE MATAKA PLAY',
                                style: TextStyles.black,
                              ),
                              Text(
                                'Fast Result lay for entertainment',
                                style: TextStyles.Medium5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            Images.logoimg1,
                            width: constraints.maxWidth < 600 ? 60 : 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton1(
                        style: TextStyles.black1,
                        backgroundColor: AppColors.whitecolor,
                        onTap: () {},
                        text: 'ADD POINT',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomButton1(
                        style: TextStyles.black1,
                        backgroundColor: AppColors.whitecolor,
                        onTap: () {},
                        text: 'WITHDRAW',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                roundCustomButton(
                  style: TextStyles.black,
                  backgroundColor: AppColors.buttoncolor,
                  onTap: () {},
                  text: 'GALI  DESAWAR',
                ),
                SizedBox(height: 10),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Card(
                          color: AppColors.whitecolor,
                          margin: EdgeInsets.all(8.0),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'DELHI MORNING',
                                  style: TextStyles.black,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '234 - 32 - 454',
                                  style: TextStyles.black1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Open: 9:30 AM',
                                        style: TextStyles.Bold8,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Flexible(
                                      child: CustomButton2(
                                        style: TextStyles.black2,
                                        backgroundColor: AppColors.buttoncolor,
                                        onTap: () {},
                                        text: 'Play Now',
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Flexible(
                                      child: Text(
                                        'Close: 10:30 AM',
                                        style: TextStyles.Bold8,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Close for today',
                                  style: TextStyles.Bold9,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

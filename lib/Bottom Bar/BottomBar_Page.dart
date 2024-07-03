import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/Image.dart';
import '../All_Custom_Faction/TextStyle.dart';
import '../Drawer Screen/Update_Password.dart';
import '../Main_Screen/Home_Screen.dart';
import '../Main_Screen/Notification_Screen.dart';
import '../controller/AppBarController.dart';
import '../controller/BottomNav_Controller.dart';

class Bottombar_Page extends StatelessWidget {
  final BottomNavController _bottomNavController =
      Get.put(BottomNavController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final AppBarController _appBarController = Get.put(AppBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: AppColors.buttoncolor,
        width: 280,
        child: Container(
          height: double.infinity,
          color: AppColors.buttoncolor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Images.personimage, fit: BoxFit.fill),
                          Text("Me Raju vinod ka bhai",
                              style: TextStyles.Bold6),
                          Text("91-9986746886", style: TextStyles.Medium3)
                        ],
                      ),
                    ),
                  ),
                  Divider(color: Colors.white, thickness: 2, height: 0),
                  SizedBox(
                    height: 5,
                  ),
                  buildDrawerItem(Images.up, "Update Password", () {
                      Get.to(() => Update_Password());
                  }),
                  buildDrawerItem(Images.ap, "Add Point", () {
                    print("Add Point tapped");
                  }),
                  buildDrawerItem(Images.wp, "Withdraw Point", () {
                    print("Withdraw Point tapped");
                  }),
                  buildDrawerItem(Images.wh, "Winning History", () {
                    print("Winning History tapped");
                  }),
                  buildDrawerItem(Images.gr, "Game Rate", () {
                    print("Game Rate tapped");
                  }),
                  buildDrawerItem(Images.nr, "Notice Board / Rules", () {
                    print("Notice Board / Rules tapped");
                  }),
                  buildDrawerItem(Images.pp, "Privacy Policy", () {
                    print("Privacy Policy tapped");
                  }),
                  buildDrawerItem(Images.tc, "Terms & Condition", () {
                    print("Terms & Condition tapped");
                  }),
                  buildDrawerItem(Images.cu, "Contact Us", () {
                    print("Contact Us tapped");
                  }),
                  buildDrawerItem(Images.mb, "Manage Bank Details", () {
                    print("Manage Bank Details tapped");
                  }),
                  buildDrawerItem(Images.share, "Share", () {
                    print("Share tapped");
                  }),
                  buildDrawerItemWithoutDivider(Images.logout, "Log out", () {
                    print("Log out tapped");
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        switch (_bottomNavController.selectedIndex.value) {
          case 0:
            return Home_Screen(scaffoldKey: _scaffoldKey);
          case 1:
            return Notification_Screen(scaffoldKey: _scaffoldKey);
          default:
            return Home_Screen(scaffoldKey: _scaffoldKey);
        }
      }),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(0),
        color: AppColors.whitecolor,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 4,
                width: double.infinity,
                color: AppColors.buttoncolor),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildBottomNavItem(Icons.home, 'Home', 0),
                  buildBottomNavItem(Icons.notifications, 'Notification', 1),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 110,
        width: 50,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RawMaterialButton(
              onPressed: () {},
              elevation: 5.0,
              fillColor: AppColors.buttoncolor,
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
              child: Icon(Icons.call, size: 28.0, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () {},
              elevation: 5.0,
              fillColor: AppColors.buttoncolor,
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
              child: Icon(Icons.chat_outlined, size: 28.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        _bottomNavController.changeIndex(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Text(label, style: TextStyles.Bold4),
        ],
      ),
    );
  }

  Widget buildDrawerItem(String imageAsset, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.asset(imageAsset, height: 30, width: 30),
                SizedBox(width: 20),
                Text(label, style: TextStyles.Medium4),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(height: 5, color: Colors.white, thickness: 0.8),
        ],
      ),
    );
  }

  Widget buildDrawerItemWithoutDivider(
      String imageAsset, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.asset(imageAsset, height: 30, width: 30),
                SizedBox(width: 20),
                Text(label, style: TextStyles.Medium4),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

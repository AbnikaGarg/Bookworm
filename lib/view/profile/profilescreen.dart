import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../utils/app_colors.dart';
import '../../utils/base_style.dart';
import '../../utils/image_strings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(1),
              const Color(0x56E27329).withOpacity(1),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title: const Text(
            "Profile",
            // style: BaseStyle.blackText20fwBold,
          ),
        ),
        body: Column(
          children: [
            heightSpace10,
            Stack(children: [
              Container(
                width: 80.w,
                height: 80.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/free-photo/man-wearing-waistcoat_1368-2886.jpg?size=626&ext=jpg&ga=GA1.1.1346304095.1701912075&semt=ais"),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                bottom: 2,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(const )
                  },
                  child: Container(
                    width: 30.h,
                    height: 30.h,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      //   color: Colors.black.withOpacity(0.1),
                      color: AppColors.color1,
                    ),
                    child: Icon(
                      LineAwesomeIcons.alternate_pencil,
                      size: 15,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ]),
            heightSpace10,
            Text(
              "Avnika Garg",
              style: BaseStyle.blackText16fw600,
            ),
            Text(
              "avnikagarg@gmail.com",
              style: BaseStyle.blackText10fw400,
            ),
            heightSpace10,
            Divider(
              height: 5.h,
            ),
            heightSpace5,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
                  elevation: 4,
                  semanticContainer: true,
                  shadowColor: Colors.grey,
                  color: AppColors.whiteColor,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          ProfileMenu(
                            title: "Dashboard",
                            icon: LineAwesomeIcons.cog,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Add Fund",
                            icon: LineAwesomeIcons.wallet,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Transfer Fund",
                            icon: LineAwesomeIcons.user_check,
                            onPress: () {},
                          ),
                          Divider(
                            height: 10.h,
                          ),
                          ProfileMenu(
                            title: "Fund Request History",
                            icon: LineAwesomeIcons.info,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Buy Package",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Package History",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Update Walllet address",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Withdrawal Fund",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Withdrawal History",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Your Genelogy",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Level Income",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Global Rewards",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Bookkworm Live",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Change Passward",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            endIcon: false,
                            onPress: () {},
                          ),
                          ProfileMenu(
                            title: "Refer and Earn",
                            // textColor: Colors.red,
                            icon: LineAwesomeIcons.alternate_sign_out,
                            // endIcon: false,
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onPress,
        leading: Container(
          width: 30.h,
          height: 30.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black.withOpacity(0.1)),
          child: Icon(
            icon,
            size: 20,
            color: AppColors.blackColor,
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),
        ),
        trailing: endIcon
            ? Container(
                width: 20.h,
                height: 20.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black.withOpacity(0.05)),
                child: Icon(
                  LineAwesomeIcons.angle_right,
                  size: 15,
                  color: AppColors.blackColor,
                ),
              )
            : null);
  }
}

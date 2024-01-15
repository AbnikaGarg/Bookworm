import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:bookwormnew/view/profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Profile",
          style: BaseStyle.blackText20fwBold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.amber,
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
                      padding: EdgeInsets.all(4),
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
              SizedBox(
                width: 150.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const UpdateProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.color1,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: Text(
                    "Edit Profile",
                    style: BaseStyle.whitetext14,
                  ),
                ),
              ),
              heightSpace20,
              Divider(
                height: 10.h,
              ),
              ProfileMenu(
                title: "Setting",
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              ProfileMenu(
                title: "Transaction Details",
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              ProfileMenu(
                title: "User Management",
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),
              Divider(
                height: 10.h,
              ),
              ProfileMenu(
                title: "Information",
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              ProfileMenu(
                title: "Logout",
                textColor: Colors.red,
                icon: LineAwesomeIcons.alternate_sign_out,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
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
            size: 15,
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
                  size: 10,
                  color: AppColors.blackColor,
                ),
              )
            : null);
  }
}

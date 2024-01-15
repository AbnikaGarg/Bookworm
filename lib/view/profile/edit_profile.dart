import 'package:bookwormnew/utils/image_strings.dart';
import 'package:bookwormnew/view/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../components/text_fields.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_style.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Edit Profile",
          style: BaseStyle.blackText20fwBold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
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
                          LineAwesomeIcons.camera,
                          size: 15,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ]),
                heightSpace30,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                heightSpace10,
                MyTextField(
                  hintText: "Full Name",
                  color: AppColors.aquaColors,
                ),
                heightSpace20,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "E-mail",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                heightSpace10,
                MyTextField(
                  hintText: "E-Mail",
                  color: AppColors.aquaColors,
                ),
                heightSpace20,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                heightSpace10,
                MyTextField(
                  hintText: "Phone No",
                  color: AppColors.aquaColors,
                ),
                heightSpace20,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                heightSpace10,
                MyTextField(
                  hintText: "Password",
                  color: AppColors.aquaColors,
                ),
                heightSpace40,
                SizedBox(
                  width: 310.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const ProfileScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color1,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: Text(
                      "Update Profile",
                      style: BaseStyle.whitetext14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

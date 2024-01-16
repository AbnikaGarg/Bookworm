// import 'package:bookwormnew/utils/app_colors.dart';
// <<<<<<< HEAD
// import 'package:bookwormnew/utils/base_style.dart';
// import 'package:bookwormnew/utils/image_strings.dart';
// import 'package:bookwormnew/view/profile/edit_profile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.whiteColor,
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
//         title: Text(
//           "Profile",
//           style: BaseStyle.blackText20fwBold,
//         ),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.moon))
//         ],
//       ),
//       body: SingleChildScrollView(
   
//         child: Container(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             children: [
//               Stack(children: [
//                 Container(
//                   width: 90.w,
//                   height: 90.h,
//                   decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       // color: Colors.amber,
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               "https://img.freepik.com/free-photo/man-wearing-waistcoat_1368-2886.jpg?size=626&ext=jpg&ga=GA1.1.1346304095.1701912075&semt=ais"),
//                           fit: BoxFit.fill)),
//                 ),
//                 Positioned(
//                   bottom: 2,
//                   right: 5,
//                   child: GestureDetector(
//                     onTap: () {
//                       // Get.to(const )
//                     },
//                     child: Container(
//                       width: 30.h,
//                       height: 30.h,
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(100),
//                         //   color: Colors.black.withOpacity(0.1),
//                         color: AppColors.color1,
//                       ),
//                       child: Icon(
//                         LineAwesomeIcons.alternate_pencil,
//                         size: 15,
//                         color: AppColors.whiteColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ]),
//               heightSpace10,
//               Text(
//                 "Avnika Garg",
//                 style: BaseStyle.blackText16fw600,
//               ),
//               Text(
//                 "avnikagarg@gmail.com",
//                 style: BaseStyle.blackText10fw400,
//               ),
//               heightSpace10,
//               SizedBox(
//                 width: 150.w,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Get.to(() => const UpdateProfileScreen());
//                   },
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: AppColors.color1,
//                       side: BorderSide.none,
//                       shape: const StadiumBorder()),
//                   child: Text(
//                     "Edit Profile",
//                     style: BaseStyle.whitetext14,
//                   ),
//                 ),
//               ),
//               heightSpace20,
//               Divider(
//                 height: 10.h,
//               ),
//               ProfileMenu(
//                 title: "Setting",
//                 icon: LineAwesomeIcons.cog,
//                 onPress: () {},
//               ),
//               ProfileMenu(
//                 title: "Transaction Details",
//                 icon: LineAwesomeIcons.wallet,
//                 onPress: () {},
//               ),
//               ProfileMenu(
//                 title: "User Management",
//                 icon: LineAwesomeIcons.user_check,
//                 onPress: () {},
//               ),
//               Divider(
//                 height: 10.h,
//               ),
//               ProfileMenu(
//                 title: "Information",
//                 icon: LineAwesomeIcons.info,
//                 onPress: () {},
//               ),
//               ProfileMenu(
//                 title: "Logout",
//                 textColor: Colors.red,
//                 icon: LineAwesomeIcons.alternate_sign_out,
//                 endIcon: false,
//                 onPress: () {},
//               ),
//             ],
//           ),
// =======

// import 'package:flutter/cupertino.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Account extends StatelessWidget {
//   const Account({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Profile",
//         ),
//         elevation: 0.1,
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(stops: [
//             0,
//             -1
//           ], colors: [
//             Colors.white,
//             const Color(0x56E27329).withOpacity(0.1),
//           ]),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 16.h,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 14.w),
//               child: Row(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: AppColors.lightGrey.withOpacity(0.3)),
//                       child: Image.asset(
//                         "assets/images/profile.jpeg",
//                         fit: BoxFit.cover,
//                         height: 60.h,
//                         width: 60.h,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 12.w,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Username',
//                           style: GoogleFonts.montserrat(
//                               fontSize: 16.sp, fontWeight: FontWeight.w700),
//                         ),
//                         SizedBox(
//                           height: 5.h,
//                         ),
//                         Text("9393399393")
//                       ],
//                     ),
//                   ),
//                   //   Icon(Icons.edit)
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30.h,
//             ),

//             // Padding(
//             //   padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
//             //   child: Text(
//             //     "Account Setting",
//             //     style: GoogleFonts.montserrat(
//             //         color: Color(0xFF5040A1),
//             //         fontSize: 16.sp,
//             //         fontWeight: FontWeight.w700),
//             //   ),
//             // ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//               child: Column(
//                 children: [
//                   GestureDetector(
//                     onTap: () {},
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.shopping_bag_outlined,
//                           size: 18.sp,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Expanded(
//                           child: Text(
//                             "My Orders",
//                             style: GoogleFonts.montserrat(
//                                 fontSize: 15.sp, fontWeight: FontWeight.w600),
//                           ),
//                         ),
//                         Icon(
//                           Icons.arrow_forward_ios_rounded,
//                           size: 16.sp,
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Divider(
//                     thickness: 1,
//                     color: Colors.black12,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.location_pin,
//                           size: 18.sp,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Expanded(
//                           child: Text(
//                             "Addresses",
//                             style: GoogleFonts.montserrat(
//                                 fontSize: 15.sp, fontWeight: FontWeight.w600),
//                           ),
//                         ),
//                         Icon(
//                           Icons.arrow_forward_ios_rounded,
//                           size: 16.sp,
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Divider(
//                     thickness: 1,
//                     color: Colors.black12,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.help,
//                         size: 18.sp,
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Expanded(
//                         child: Text(
//                           "Contact us",
//                           style: GoogleFonts.montserrat(
//                               fontSize: 15.sp, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios_rounded,
//                         size: 16.sp,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Divider(
//                     thickness: 1,
//                     color: Colors.black12,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.logout_outlined,
//                         size: 18.sp,
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Expanded(
//                         child: Text(
//                           "Logout",
//                           style: GoogleFonts.montserrat(
//                               fontSize: 15.sp, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios_rounded,
//                         size: 16.sp,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Divider(
//                     thickness: 1,
//                     color: Colors.black12,
//                   ),
//                 ],
//               ),
//             ),
//           ],
// >>>>>>> dd04da81059ef996b35c12b57be522fb174ead8d
//         ),
//       ),
//     );
//   }
// }
// <<<<<<< HEAD

// class ProfileMenu extends StatelessWidget {
//   const ProfileMenu({
//     super.key,
//     required this.title,
//     required this.icon,
//     required this.onPress,
//     this.endIcon = true,
//     this.textColor,
//   });

//   final String title;
//   final IconData icon;
//   final VoidCallback onPress;
//   final bool endIcon;
//   final Color? textColor;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         onTap: onPress,
//         leading: Container(
//           width: 30.h,
//           height: 30.h,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(100),
//               color: Colors.black.withOpacity(0.1)),
//           child: Icon(
//             icon,
//             size: 15,
//             color: AppColors.blackColor,
//           ),
//         ),
//         title: Text(
//           title,
//           style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),
//         ),
//         trailing: endIcon
//             ? Container(
//                 width: 20.h,
//                 height: 20.h,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(100),
//                     color: Colors.black.withOpacity(0.05)),
//                 child: Icon(
//                   LineAwesomeIcons.angle_right,
//                   size: 10,
//                   color: AppColors.blackColor,
//                 ),
//               )
//             : null);
//   }
// }
// =======
// >>>>>>> dd04da81059ef996b35c12b57be522fb174ead8d

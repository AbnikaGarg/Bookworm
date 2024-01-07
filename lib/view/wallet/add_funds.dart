import 'package:bookwormnew/components/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/text_fields.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_style.dart';
import '../../utils/image_strings.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AddFunds extends StatefulWidget {
  const AddFunds({super.key});

  @override
  State<AddFunds> createState() => _AddFundsState();
}

class _AddFundsState extends State<AddFunds> {
  TextEditingController c1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 1,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 18,
        ),
        title: const Text(
          "Add Fund",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Container(
            //   height: 220,
            //   width: double.infinity,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(10),
            //     child: Image.network(
            //       "https://bookkworm.com/assets/main/admin_assets/img/admin_ad.jpeg",
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            SizedBox(height: 14.h),
            Center(
              child: QrImageView(
                data: '123456789t65756550',
                version: QrVersions.auto,
                size: 150.h,
              ),
            ),
            heightSpace10,
            Text(
              "Amount",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,

            MyTextField(
              hintText: "Enter Amount",
              color: AppColors.aquaColors,
            ),
            SizedBox(height: 14.h),
            Text(
              "Payment Mode",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,

            MyTextField(
              hintText: "Choose one",
              color: AppColors.aquaColors,
              icon: Icon(
                Icons.arrow_drop_down,
                size: 26,
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              "Transaction no.",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,

            MyTextField(
              hintText: "Enter Transaction no.",
              color: AppColors.aquaColors,
            ),
            SizedBox(height: 20.h),
            // Text(
            //   "Upload",
            //   style: GoogleFonts.montserrat(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 14.sp,
            //       color: Color.fromRGBO(0, 0, 0, 1)),
            // ),
            // heightSpace10,

            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon(Icons.upload_outlined),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Upload",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("Proof of payment",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 12.sp, height: 1.4)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    InkWell(
                      onTap: () {
                        //   uploadFile();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.backGround2,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 6.h),
                          child: Text("Choose",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(38, 130, 255, 1),
                                  height: 1.4)),
                        ),
                      ),
                    ),
                  ]),
            ),
            heightSpace50,
            Center(
              child: GestureDetector(
                onTap: () {},
                child: const CustomButton(
                  title1: "Add Funds",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

commonButton({title, color}) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      height: 40.h,
      width: 100.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
      child: Text(
        title,
        style: BaseStyle.whitetext14fw600,
      ));
}

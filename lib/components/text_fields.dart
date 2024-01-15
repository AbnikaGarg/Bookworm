import 'package:bookwormnew/utils/base_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? labelTitle;
  final TextEditingController? controller;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.labelTitle,
    required this.suffixIcon,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          validator: validator,controller: controller,
          style: TextStyle(color: Color(0xFFD2D2D2), fontSize: 16.sp),
          decoration: InputDecoration(
            labelText: labelTitle,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD2D2D2))),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD2D2D2))),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD2D2D2))),
            labelStyle: const TextStyle(
              color: Color(0xFFD2D2D2),
            ),
            suffixIconColor: Color(0xFFD2D2D2),
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            suffixIcon: suffixIcon,
            suffixIconConstraints: const BoxConstraints(
              minWidth: 10,
              minHeight: 10,
            ),
          ),
        )
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  String hintText;
  var color;
  var fillcolor;
  var icon;
  var preicon;
  bool readOnly;
  var validation;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  var ontap;
  var ontapSuffix;
  final bool obsecureText;
  final bool isSuffixIcon;
  final TextEditingController? textEditingController;
  MyTextField(
      {super.key,
      required this.hintText,
      required this.color,
      this.icon,
      this.fillcolor = Colors.white,
      this.ontapSuffix,
      this.obsecureText = false,
      this.isSuffixIcon = false,
      this.readOnly = false,
      this.preicon,
      this.ontap,
      this.textInputType,
      this.inputFormatters,
      this.textEditingController,
      this.validation});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType,
        onTap: ontap,
        readOnly: readOnly,
        inputFormatters: inputFormatters,
        controller: textEditingController,
        obscureText: obsecureText,
        validator: validation,
        cursorColor: AppColors.lightGrey,
        // cursorHeight: 20.h,
        //  textAlignVertical: TextAlignVertical.center,

        decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.displaySmall,
            counterText: '',
            errorStyle: GoogleFonts.montserrat(fontSize: 12.sp),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromRGBO(225, 30, 61, 1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            hintStyle: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 14.sp),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromRGBO(183, 191, 199, 1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromRGBO(183, 191, 199, 1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(183, 191, 199, 1),
                  width: 1,
                )),
            filled: true,
            fillColor: fillcolor,
            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 12, 15, 15),
            hintText: hintText,
            floatingLabelStyle:
                const TextStyle(color: Color.fromRGBO(245, 73, 53, 1)),
            suffixIcon: isSuffixIcon
                ? GestureDetector(
                    onTap: ontapSuffix,
                    child: !obsecureText
                        ? Icon(
                            Icons.visibility_off,
                            size: 18.h,
                            color: Colors.grey,
                          )
                        : Icon(
                            Icons.visibility,
                            size: 18.h,
                            color: Colors.grey,
                          ),
                  )
                : icon));
  }
}

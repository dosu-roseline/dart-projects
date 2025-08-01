import 'package:flutter/material.dart';
import 'package:agents/components/colors.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kNavbarButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 10.0,
  color: AppColors.secondary,
);

const kSmallTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 11.0,
);

const kLabelTextStyle = TextStyle(
  color: AppColors.textPrimary,
  fontWeight: FontWeight.w400,
  fontSize: 12.0,
);

const kLabelGreyTextStyle = TextStyle(
  color: AppColors.greyMaster,
  fontWeight: FontWeight.w600,
  fontSize: 12.0,
);

const kTitleTextStyle = TextStyle(
  color: AppColors.textPrimary,
  fontWeight: FontWeight.w700,
  fontSize: 24.0,
);

const kAppBarTextStyle = TextStyle(
  color: AppColors.textPrimary,
  fontWeight: FontWeight.w600,
  fontSize: 20.0,
  fontFamily: 'Poppins'
);

const kTitleTextStylePurple = TextStyle(
  color: AppColors.primary,
  fontWeight: FontWeight.w700,
  fontSize: 24.0,
);

const kTitleTextStyleJob = TextStyle(
  color: AppColors.greyTextMaster,
  fontWeight: FontWeight.w500,
  fontSize: 14.0,
);

const kTitleTextStyleJobBold = TextStyle(
  color: AppColors.greyGrandMaster,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
);

const kTitleTextStyleJobNormal = TextStyle(
  color: AppColors.greyGrandMaster,
  fontWeight: FontWeight.w400,
  fontSize: 16.0,
);

const kSubTitleTextStyle = TextStyle(
  color: AppColors.textPrimary,
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
);
const kSubTitleTextStyleNormal = TextStyle(
  color: AppColors.textPrimary,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  ),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const KTextFieldDecoration = InputDecoration(
  hintText: 'Enter your password',
  hintStyle: TextStyle(
    fontSize: 12.0,
    color: AppColors.textHint,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.textBorder, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.textBorder, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
);

Icon trailingIcon() {
  return const Icon(
    Icons.arrow_forward_ios,
    size: 20,
    color: AppColors.greyTextMaster,
  );
}

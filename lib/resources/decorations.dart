import 'package:flutter/material.dart';
import 'package:pawcat/resources/d_colors.dart';
import 'package:pawcat/resources/dimens.dart';

import 'd_text_styles.dart';

const _phoneInputBorder = UnderlineInputBorder(borderSide: BorderSide(color: DColors.grey2));

const _friendPhoneInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: DColors.grey2),
  borderRadius: BorderRadius.zero,
);






const inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(DDimens.s),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.darkRegular,
  labelStyle: DTextStyles.darkRegular,
  enabledBorder: _phoneInputBorder,
  disabledBorder: _phoneInputBorder,
  focusedBorder: _phoneInputBorder,
);

const _ibanInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(DDimens.sm)), borderSide: BorderSide(color: DColors.grey2));

const ibanInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(DDimens.sm),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.greyRegular,
  labelStyle: DTextStyles.darkRegular,
  enabledBorder: _ibanInputBorder,
  errorBorder: _ibanInputBorder,
  disabledBorder: _ibanInputBorder,
  focusedBorder: _ibanInputBorder,
  filled: true,
  fillColor: Colors.white,
);

const searchInputDecoration = InputDecoration(
  hintStyle: DTextStyles.darkRegular,
  prefixIconColor: DColors.dark,
  prefixIconConstraints: BoxConstraints(minWidth: 56),
  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(DDimens.l)), borderSide: BorderSide.none),
  contentPadding: EdgeInsets.only(),
);

const searchBarDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(DDimens.l)),
  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
);

const popupBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(DDimens.xl)),
  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
);

const cardDecoration = BoxDecoration(
  color: DColors.grey0,
  borderRadius: BorderRadius.all(Radius.circular(15)),
);

const phoneLineDecoration = BoxDecoration(
  color: DColors.grey1,
  borderRadius: BorderRadius.all(Radius.circular(15)),
);


const bsBorderRadius = BorderRadius.only(topLeft: Radius.circular(DDimens.bs), topRight: Radius.circular(DDimens.bs));
const allBorderRadius = BorderRadius.all(Radius.circular(DDimens.m));
const allBorder = RoundedRectangleBorder(borderRadius: allBorderRadius);
const bsBorder = RoundedRectangleBorder(borderRadius: bsBorderRadius);
final bsDecoration = BoxDecoration(color: Colors.white, borderRadius: bsBorderRadius, boxShadow: [shadow]);

final shadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 3,
  offset: const Offset(0, -4),
);

const shadowDown = BoxShadow(color: DColors.barrier, spreadRadius: 1, blurRadius: 3, offset: Offset(0, 4));

ButtonStyle switchButton(double opacity) => TextButton.styleFrom(
      foregroundColor: DColors.dark.withOpacity(opacity),
      textStyle: DTextStyles.darkBoldText,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DDimens.l))),
    );


const dragSenstivity = 8;

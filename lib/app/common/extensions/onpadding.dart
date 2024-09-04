import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension OnPaddingRow on Row {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.w, child: this);
  }
}

extension OnPaddingColumn on Column {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.h, child: this);
  }
}

extension OnPaddingContainer on Container {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.h, child: this);
  }
}

extension OnPaddingWidget on Widget {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.w, child: this);
  }
}

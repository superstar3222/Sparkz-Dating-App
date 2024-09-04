import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/app/common/common.dart';
import 'package:dating_app/app/common/widgets/no_internet_widget.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/core/config/injection_container.dart';
import '../../../../app/core/logger/app_logger.dart';
import '../../../auth/data/models/user.dart';
import 'bloc/location/location_bloc.dart';
import 'views/widgets/users_card.dart';

part './views/home_controller.dart';
part './views/home_view.dart';

import 'dart:developer';

import 'package:dating_app/app/common/common.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/src/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/core/config/injection_container.dart';
import '../../../../../app/core/logger/app_logger.dart';
import '../../../../../app/core/network/dio_exception.dart';
import '../../../../../app/core/services/geolocation.dart';
import '../../../../features/home/presentation/bloc/gps/gps_bloc.dart';
import '../../../../features/home/presentation/bloc/location/location_bloc.dart';
import '../../../data/models/user.dart';

part 'view/signup_controller.dart';
part 'view/signup_view.dart';

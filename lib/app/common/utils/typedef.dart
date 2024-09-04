import 'package:dartz/dartz.dart';
import 'package:dating_app/src/auth/data/models/user.dart';

import '../../core/network/dio_exception.dart';

typedef ResultFuture<T> = Future<Either<NetworkExceptions, T>>;

typedef ResultVoid<T> = ResultFuture<void>;

typedef DataMap = Map<String, dynamic>;

typedef UserList = List<User>;

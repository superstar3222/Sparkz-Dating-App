class AppString {
  AppString._();

  // Api call error
  static const cancelRequest = 'Request to API server was cancelled';
  static const connectionTimeout = 'Connection timeout with API server';
  static const receiveTimeout = 'Receive timeout in connection with API server';
  static const sendTimeOut = 'Send timout in connection with API server';
  static const unexpectedError = 'Unexpected error occurred';
  static const unknownError = 'Something went wrong';
  static const duplicateEmail = 'Email has already been taken';

  // Statuc Code
  static const badRequest = 'Bad request';
  static const unauthorized = 'Unauthorized';
  static const forbidden = 'Forbidden';
  static const notFound = 'Not found';
  static const internalServerError = 'Internal server error';
  static const badGateway = 'Bad gateway';

  // No Internet Connection
  static const socketException =
      'Check your internet connection, then refresh the page';
  static const connectionMessage = 'No Internet Connection';

  // Skeletons Strings
  static String notificationMsg = 'We think $matchMsg';
  static String matchMsg = 'Vicky Johnson';
  static String lastMsg = 'is a perfect match for you';
  static String verifySuccess = 'Verified Successfully';
  static String passwordReset = 'Otp has been sent to your email ';
  static String signupSucess = 'User Signup Successfully';
  static String allowGps = 'Please allow Gps permission';
}

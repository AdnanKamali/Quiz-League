import 'package:dio/dio.dart';
import 'package:quiz_league/utility/error_response.dart';

ErrorResponse errorHandler(DioException e) {
  // print("ERROR HANDLER");
  // print(e);
  // print(e.type);
  // print(e.message);
  // print(e.response);
  // print(e.response?.data);
  // print(e.response?.extra);
  // print(e.response?.statusCode);
  // print("END ERROR HANDLER");

  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      return ErrorResponse(
        errorMessage: "اتصال به سرور انجام نشد، مشکل اینترنت یا کندی شبکه.",
        statusCode: -1,
      );

    case DioExceptionType.sendTimeout:
      return ErrorResponse(
        errorMessage: "ارسال داده‌ها به سرور بیش از حد طول کشید.",
        statusCode: -1,
      );

    case DioExceptionType.receiveTimeout:
      return ErrorResponse(
        errorMessage: "دریافت پاسخ از سرور بیش از حد طول کشید.",
        statusCode: -1,
      );

    case DioExceptionType.badCertificate:
      return ErrorResponse(
        errorMessage: "گواهی امنیتی سرور نامعتبر است.",
        statusCode: -1,
      );

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;

      try {
        return ErrorResponse(
          errorMessage: e.response?.data["error"] ?? "Unknown data response",
          statusCode: statusCode,
        );
      } catch (_) {
        return ErrorResponse(
          errorMessage: "Unknown data response",
          statusCode: statusCode,
        );
      }

    case DioExceptionType.cancel:
      return ErrorResponse(errorMessage: "درخواست لغو شد.", statusCode: -1);

    case DioExceptionType.connectionError:
      return ErrorResponse(
        errorMessage: "اتصال به اینترنت وجود ندارد.",
        statusCode: -1,
      );

    case DioExceptionType.unknown:
      return ErrorResponse(
        errorMessage: "خطای نامشخص: ${e.message}",
        statusCode: -1,
      );
  }
}

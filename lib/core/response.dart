abstract class Response {
  final int statusCode;

  const Response({required this.statusCode});
}

class FailureResponse extends Response {
  const FailureResponse(
      {required super.statusCode, required this.errorMessage});
  final String errorMessage;
}

class SuccessResponse<T> extends Response {
  SuccessResponse({super.statusCode = 200, required this.result});
  final T result;
}

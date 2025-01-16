import 'package:dartz/dartz.dart';
import 'package:quiz_league/core/response.dart';

abstract class GetObjectInterface<O, P> {
  /// This Interface give a type of [Object] as [O]
  /// and give a parameter type as [P] to pass parameter to function [getObject]
  /// and then return [Either<FailureResponse, SuccessResponse<O>>, FailureResponse>]
  Future<Either<FailureResponse, SuccessResponse<O>>> getObject(P para);
}

abstract class GetObjectInterfaceWithoutPara<O> {
  /// This Interface give a type of [Object] as [O]
  /// and then return [Either<FailureResponse, SuccessResponse<O>>, FailureResponse>]
  Future<Either<FailureResponse, SuccessResponse<O>>> getObject();
}

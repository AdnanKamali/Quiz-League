import 'package:dartz/dartz.dart';
import 'package:quiz_league/core/response.dart';

abstract class GetListInterface<L, P> {
  /// This Interface give a type of [List] as [L]
  /// and give a parameter type as [P] to pass parameter to function [getList]
  /// and then return [Either<FailureResponse, SuccessResponse<List<L>>>, FailureResponse>]
  Future<Either<FailureResponse, SuccessResponse<List<L>>>> getList(P para);
}

abstract class GetListInterfaceWithoutPara<L> {
  /// This Interface give a type of [List] as [L]
  /// and then return [Either<FailureResponse, SuccessResponse<List<L>>>, FailureResponse>]
  Future<Either<FailureResponse, SuccessResponse<List<L>>>> getList();
}

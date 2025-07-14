import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '{{name.snakeCase()}}_remote_datasource.g.dart';

@RestApi(baseUrl: )
abstract class {{name.pascalCase()}}RemoteDatasourceRestClient {
  factory {{name.pascalCase()}}RemoteDatasourceRestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _{{name.pascalCase()}}RemoteDatasourceRestClient;


}

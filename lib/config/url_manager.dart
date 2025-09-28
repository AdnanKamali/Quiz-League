abstract class UrlManager {
  static const String _baseUrl = "http://127.0.0.1:8000";
  static const String _baseUrlAPI = "$_baseUrl/api/v1";

  static const String staticImageUrl = "${_baseUrl}upload/images/";

  static const String league = "$_baseUrlAPI/league";
  static const String team = "$_baseUrlAPI/team";
  static const String match = "$_baseUrlAPI/match";
  static const String question = "$_baseUrlAPI/question";
  static const String settings = "$_baseUrlAPI/settings";
}

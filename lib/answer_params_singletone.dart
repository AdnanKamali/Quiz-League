class AnswerParamsSingletone {
  static final AnswerParamsSingletone _instance = AnswerParamsSingletone._();

  AnswerParamsSingletone._();

  factory AnswerParamsSingletone() => _instance;

  late int matchId;
  late int teamId;
  late int questionId;
  int? selectedOptionId;
  String? textAnswer;
  late bool isCorrect;

  set setMatchId(int matchId) => this.matchId = matchId;
  set setTeamId(int teamId) => this.teamId = teamId;
  set setSelectedOptionId(int? selectedOptionId) =>
      this.selectedOptionId = selectedOptionId;
  set setQuestionId(int questionId) => this.questionId = questionId;
  set setTextAnswer(String? textAnswer) => this.textAnswer = textAnswer;
  set setIsCorrect(bool isCorrect) => this.isCorrect = isCorrect;

  Map<String, dynamic> toJson() => {
        "match": matchId,
        "team": teamId,
        "question": questionId,
        "selected_option": selectedOptionId,
        "text_answer": textAnswer,
        "is_correct": isCorrect,
      };
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_text_cubit/question_text_cubit.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';

class TextBaseSubScreenBuilder extends StatelessWidget {
  TextBaseSubScreenBuilder({
    super.key,
    required this.questionOptionEntityList,
    required this.onBackToMatch,
  });
  final void Function() onBackToMatch;
  final List<QuestionOptionEntity> questionOptionEntityList;

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final questionTextCubit = context.read<QuestionTextCubit>();
    return Column(
      children: [
        TextField(
          controller: textEditingController,
          style: TextStyle(fontSize: 82),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.indigo),
            ),
            label: Text(
              "متن جواب رو وارد کنید",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.normal,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        BlocBuilder<QuestionTextCubit, QuestionTextState>(
            builder: (ctx, state) {
          return state.maybeWhen(
            orElse: () => CustomElevatedButton(
              child: Text("مشاهده جواب"),
              onPressed: () {
                questionTextCubit.showAnswer();
              },
            ),
            showAnswer: () => Column(
              spacing: 26,
              children: [
                SizedBox(
                  height: 26,
                ),
                Text(
                  questionOptionEntityList.isEmpty
                      ? "پاسخی وارد نشده"
                      : "پاسخ: ${questionOptionEntityList.first.text}",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 165,
                  children: [
                    IconButton(
                      onPressed: () {
                        questionTextCubit.acceptAnswer(
                          textEditingController.text,
                          false,
                        );
                        onBackToMatch();
                        textEditingController.text = "";
                        questionTextCubit.intialState();
                      },
                      icon: Icon(
                        Icons.cancel,
                        size: 82,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        questionTextCubit.acceptAnswer(
                          textEditingController.text,
                          true,
                        );
                        onBackToMatch();
                        textEditingController.text = "";
                        questionTextCubit.intialState();
                      },
                      icon: Icon(
                        Icons.check,
                        size: 82,
                        color: Colors.green,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ],
    );
  }
}

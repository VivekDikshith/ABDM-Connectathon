import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:symptom_checker/report.dart';
import 'package:symptom_checker/utils/question_provider.dart';
import 'package:symptom_checker/utils/questionner_response_builder.dart';

import 'models/question.dart';
import 'models/symptom_check_response.dart';

class ResponseCaptureForm extends StatefulWidget {
  const ResponseCaptureForm({Key? key}) : super(key: key);

  @override
  State<ResponseCaptureForm> createState() => _ResponseCaptureFormState();
}

class _ResponseCaptureFormState extends State<ResponseCaptureForm> {

  final SymptomCheckResponse _response = SymptomCheckResponse();

  @override
  Widget build(BuildContext context) {

    final questions = QuestionProvider().getQuestion();

    final questionWidgets = getQuestions(questions);

    return Container(
      padding: EdgeInsets.only(top: 30.0),
        child: Column(mainAxisSize: MainAxisSize.min,
            children:<Widget>[
              ListView.builder(
                  itemCount: questionWidgets.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                return Container(
                  child: questionWidgets[index],
                );
              }),
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20),
                primary: Color(0xFF093863)),
            onPressed: () {
              try
              {
                var fhirResponse = QuestionnaireResponseBuilder(questionProvider: QuestionProvider(), symptomCheckResponse: _response).build();
                showDialog(context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("FHIR representation of the Response:"),
                      content:  Text(json.encode(fhirResponse)?? ""),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: const Text("Close"),
                          ),
                        ),
                      ],
                    ));
                print(fhirResponse);
              }catch(e)
              {
                print(e);
              }

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SymptomReport()));
            },
            child: const Text('Submit'),
          )
        )
            ])
    );
  }

  List<Widget> getQuestions(List<Question> questions)
  {
    final List<Widget> questionWidgets =[];

    for(var i= 0; i < questions.length; i++)
      {
        questionWidgets.add(buildQuestionWithOptions(questions[i]));
      }

    return questionWidgets;
  }

  Widget buildQuestionWithOptions(Question question)=> Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
            padding: EdgeInsets.only(right: 20, bottom: 10),
            child: InkWell(
                child: buildQuestion(question.questionText)
            )
        ),
        buildOptions(question.possibleAnswers, question.questionId)
      ]
  );

  Widget buildQuestion(String questionText) => Text(
      questionText,
      textAlign: TextAlign.left,
      maxLines: 3,
      softWrap: true,
      style: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat_medium', color: Color(0xFF6C6F93))
  );

  Widget buildOptions(List<String> options, String questionId)=> GestureDetector(
      child: Container(
        width:  MediaQuery.of(context).size.width * 0.3,
        margin: EdgeInsets.all(10),
        child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List<Widget>.generate(options.length, (index) {
              return buildOption(options[index], false, questionId);
            })
        ),
      )
  );

  Widget buildOption(String optionName, bool isSelected, String questionId)
  {
    return Container(
        child: ChoiceChip(
            padding: EdgeInsets.only(left: 5, right: 5),
            label: Text(
                optionName,
                style: TextStyle(
                    color: isSelected || (_response.getResponse(questionId) == optionName)
                        ? Colors.white
                        :Color(0xFF5D5D5D),
                    fontFamily: 'Montserrat_regular',
                    fontSize: 14.0
                )
            ),
            backgroundColor: Colors.white,
            selectedColor: Color(0xFF0F4391),
            shape: StadiumBorder(
                side: BorderSide(
                  color: Color(0xFFD2D2D2),
                )),
            elevation: 0,
            selected: isSelected || (_response.getResponse(questionId) == optionName),
            onSelected:(selected) {
              setState(() {
                _response.addResponse(questionId, optionName);
              });
            }
        )
    );
  }

}






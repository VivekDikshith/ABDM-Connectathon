import 'package:symptom_checker/utils/question_provider.dart';

import '../models/symptom_check_response.dart';

class QuestionnaireResponseBuilder
{
  List<dynamic> items = [];
  final SymptomCheckResponse symptomCheckResponse;
  final QuestionProvider questionProvider;

   QuestionnaireResponseBuilder({required this.symptomCheckResponse, required this.questionProvider});


  dynamic build(){
    _fetchAndAddAnswers();
    var questionnaireResource = _buildStaticContent();
    //questionnaireResource['item'] = [];

    return questionnaireResource;
  }

  void _fetchAndAddAnswers()
  {
    var allResponses = symptomCheckResponse.getAllResponses();
    allResponses.forEach((key, value) {
      _addAnswer(key, value);
    });
  }

  void _addAnswer(String questionId, String answerText)
  {
     var questionText = questionProvider.getQuestionText(questionId);
     var valueCoding = symptomCheckResponse.getTerminologyCode(answerText);
    var item = {
      "linkId":"place holder",
      "text": questionText,
      "answer":[
      {
        "valueCoding":{
          "system": valueCoding?.system??"",
          "code":valueCoding?.code??"",
          "display":valueCoding?.display??answerText
        }
      }
      ]
    };

    items.add(item);
  }



  dynamic _buildStaticContent()
  {
    var questionnaireResourceWithBasicProperties = {
      "resourceType":"QuestionnaireResponse",
      "id":"123456",
      "status":"completed",
      "item": items
    };

    return questionnaireResourceWithBasicProperties;
  }
}
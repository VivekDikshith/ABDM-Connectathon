import 'package:symptom_checker/models/coding.dart';

class SymptomCheckResponse
{
  final Map<String, String> _response = <String, String>{};

  final Map<String, Coding> _responseToTerminologyMapping = <String, Coding>{
    "Yes":Coding('373066001', 'http://snomed.info/sct','Yes'),
    "No":Coding('373067005', 'http://snomed.info/sct','No'),
    "Don't Know":Coding('261665006', 'http://snomed.info/sct',"Don't Know"),
    "Breast Cancer":Coding('254837009', 'http://snomed.info/sct',"Breast Cancer"),
    "Cervical Cancer":Coding('429484003', 'http://snomed.info/sct',"Cervical Cancer"),
    "Oral Cancer":Coding('363505006', 'http://snomed.info/sct',"Oral Cancer"),
    "Colon Cancer":Coding('363406005', 'http://snomed.info/sct',"Colon Cancer"),
    "Other Cancer":Coding('74964007', 'http://snomed.info/sct',"Other Cancer"),
    "None":Coding('260413007', 'http://snomed.info/sct','None'),
    "Now":Coding('421723005', 'http://snomed.info/sct','Now'),
  };

  void addResponse(String questionId, String value)
  {
    _response[questionId] = value;
  }

  Map<String, String> getAllResponses(){
    return _response;
  }

  String? getResponse(String questionId)
  {
    return _response[questionId];
  }

  Coding? getTerminologyCode(String response)
  {
    return _responseToTerminologyMapping[response];
  }
}
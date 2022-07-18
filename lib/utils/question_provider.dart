import 'package:symptom_checker/models/question.dart';

class QuestionProvider
{
static final questions = [
  Question(questionText: "Do you have past history of cancer?", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "0"),
  Question(questionText: "If yes, specify cancer type", possibleAnswers: ["Breast Cancer", "Cervical Cancer", "Oral Cancer", "Colon Cancer", "Other Cancer"], questionId: "00"),
  Question(questionText: "Any one in your family has any past history of cancer?", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "1"),
  Question(questionText: "If yes, specify cancer type", possibleAnswers: ["Breast Cancer", "Cervical Cancer", "Oral Cancer", "Colon Cancer", "Other Cancer"], questionId: "2"),
  Question(questionText: "At what age you had your first menstrual cycle (First Period)?", possibleAnswers: ["7-11", "12-14", "15 or Above"], questionId: "3"),
  Question(questionText: "At what age did you have your first child?", possibleAnswers: ["None", "<20", "20-30", ">30"], questionId: "4"),
  Question(questionText: "Did you breast feed your child?", possibleAnswers: ["Yes", "No"], questionId: "5"),
  Question(questionText: "Have you reached your menopause? ( time that marks end of your periods/menses)", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "6"),
  Question(questionText: "Do you feel any lump in your breast or armpit?", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "7"),
  Question(questionText: "Have you noticed any blood stained discharge from the nipple?", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "8"),
  Question(questionText: "Have you noticed any change in skin texture/ulcer over breast?", possibleAnswers: ["Yes", "No", "Don't Know"], questionId: "9"),
  Question(questionText: "Have you used oral contraceptive pills/ Hormone Replacement therapy?", possibleAnswers: ["No", "<5 years", ">5 years"], questionId: "10"),
  Question(questionText: "Have you ever had any clinical breast examination done by a doctor?", possibleAnswers: ["Never","<3 years", ">3 years"], questionId: "11"),
];

  List<Question> getQuestion(){
    return questions;
  }

  String? getQuestionText(String questionId)
  {
    var interestedQuestion = questions?.where((element) => element.questionId ==questionId )?.first;
    return interestedQuestion?.questionText;
  }
}
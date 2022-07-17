import 'package:symptom_checker/models/question.dart';

class QuestionProvider
{

  List<Question> getQuestion(){
    final questions = [
      Question(questionText: "Any one in your family has any past history of cancer?", possibleAnswers: ["Yes", "No"], questionId: "1"),
      Question(questionText: "If yes, specify cancer type", possibleAnswers: ["Breast Cancer", "Cervical Cancer", "Oral cancer", "Colon Cancer", "Other Cancer"], questionId: "2"),
      Question(questionText: "At what age you had your first menstrual cycle (First Period)?", possibleAnswers: ["B/W 10-13 years", "B/W 14-16 years", "None"], questionId: "3"),
      Question(questionText: "At what age did you have your first child?", possibleAnswers: ["B/W 18-21 years", "B/W 22-30 years", "Above 30"], questionId: "4"),
      Question(questionText: "Did you breast feed your child?", possibleAnswers: ["Yes", "No"], questionId: "5"),
      Question(questionText: "Have you reached your menopause? ( time that marks end of your periods/menses)", possibleAnswers: ["Yes", "No"], questionId: "6"),
      Question(questionText: "Do you feel any lump in your breast or armpit?", possibleAnswers: ["Yes", "No"], questionId: "7"),
      Question(questionText: "Have you noticed any blood stained discharge from the nipple?", possibleAnswers: ["Yes", "No"], questionId: "8"),
      Question(questionText: "Have you noticed any change in skin texture/ulcer over breast?", possibleAnswers: ["Yes", "No"], questionId: "9"),
      Question(questionText: "Have you used oral contraceptive pills/ Hormone Replacement therapy?", possibleAnswers: ["Yes", "No"], questionId: "10"),
    ];

    return questions;
  }
}
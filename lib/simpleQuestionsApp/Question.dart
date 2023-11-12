class Question {
  String _question = "";
  String _answer1 = "";
  String _answer2 = "";
  String _answer3 = "";

  // Constructor
  Question(
    String question,
    String answer1,
    String answer2,
    String answer3,
  ) {
    _question = question;
    _answer1 = answer1;
    _answer2 = answer2;
    _answer3 = answer3;
  }

  get question {
    return _question;
  }

  get answer1 {
    return _answer1;
  }

  get answer2 {
    return _answer2;
  }

  get answer3 {
    return _answer3;
  }
}

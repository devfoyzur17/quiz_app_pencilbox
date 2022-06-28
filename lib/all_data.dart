// ignore_for_file: prefer_const_declarations

final String question = "question";
final String answer = "answer";
final String rightAnswer = "rightAnswer";
final String givenAnswer = "givenAnswer";

List<Map<String, dynamic>> questionListData = [
  {
    question: "1. Hot Reload and Hot Restart are two Features of Flutter VM",
    answer: ["True", "False"],
    rightAnswer: "False",
    givenAnswer: ""
  },
  {
    question: "2. Which of the following is not a built in type in Dart?",
    answer: ["int", "float", "bool", "Function"],
    rightAnswer: "float",
    givenAnswer: ""
  },
  {
    question: "3. Which one of the following declarations is incorrect?",
    answer: [
      "var x = 10",
      "final String name = ‘ABC’",
      ". static final var String routeName = ‘/’",
      "dynamic d = false"
    ],
    rightAnswer: "static final var String routeName = ‘/’",
    givenAnswer: ""
  },
  {
    question:
        "4. Variables declared with ‘var’ can take any type of value at declaration",
    answer: [" True", "False"],
    rightAnswer: "True",
    givenAnswer: ""
  },
  {
    question:
        "5. When you mix a class, you must have to override the properties and methods of the implemented class:",
    answer: ["True", "False"],
    rightAnswer: "False",
    givenAnswer: ""
  },
  {
    question: "6 .Which one is false?",
    answer: [
      "Abstract method doesn’t have a body",
      "Abstract classes cannot be instantiated.",
      " A class can have multiple constructors",
      "A class can’t implement another class and can be mixed with another class at the same time"
    ],
    rightAnswer:
        "A class can’t implement another class and can be mixed with another class at the same time",
    givenAnswer: ""
  },
  {
    question:
        "7. If you have a class named Student with two properties name and id, which one of the following constructor declarations is invalid?",
    answer: [
      "Student(this.name, this.id)",
      "Student.basic(this.name, this.id)",
      "Student(String name, int id) : super(name, id)",
      " Student([this.name = ‘’, this.id = 0])"
    ],
    rightAnswer: "Student(String name, int id) : super(name, id)",
    givenAnswer: ""
  },
  {
    question: "8. Positional arguments cannot have a default value",
    answer: ["True", "False"],
    rightAnswer: "True",
    givenAnswer: ""
  },
  {
    question: "9. Which of the following declarations is incorrect?",
    answer: [
      "final List<int> marks = const[50, 60, 70]",
      "final Set<int> marks = {50, 60, 70}",
      "const marks = const {‘Math’ : 80, ‘Physics’: 85}",
      "const marks = final {‘Math’ : 80, ‘Physics’: 85}"
    ],
    rightAnswer: "const marks = final {‘Math’ : 80, ‘Physics’: 85}",
    givenAnswer: ""
  },
  {
    question: "10. The _______ function is a predefined method in Dart",
    answer: [" declare()", "list()", " main()", "return()"],
    rightAnswer: " main()",
    givenAnswer: ""
  },
];

class Quiz {
  Quiz({required this.question, required this.answer});

  final String question;
  final bool answer;
}

Quiz q1 = Quiz(question: "Кыргызстанда 7 область барбы ?", answer: true);
Quiz q2 = Quiz(question: "Россия согушту утабы?", answer: true);
Quiz q3 = Quiz(question: "Кыргызстанда тенге колдонулабы?", answer: false);
Quiz q4 = Quiz(question: "Аргентина чемпион болдубу?", answer: true);
Quiz q5 =
    Quiz(question: "SAS УлууБританиянын эн элытный спецназыбы?", answer: true);
Quiz q6 = Quiz(question: "Сатурн эн чон планетабы?", answer: false);
Quiz q7 = Quiz(question: "Париж Франциянын борборубу?", answer: true);
Quiz q8 = Quiz(question: "Кытай эн кучтуу олкобу?", answer: false);
Quiz q9 = Quiz(question: "Кыргызстандан алмаз чыгабы?", answer: false);

List<Quiz> quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9];

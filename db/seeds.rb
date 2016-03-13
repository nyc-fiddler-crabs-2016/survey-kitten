bob = User.create(username:"Bob", password:"password", email:"bob@bob.com")
big_bob = User.create(username:"Big bob", password:"password", email:"bob@bob.com")


s1 = Survey.create(name:"Survey 1", category:"programming",creator_id:1)

  s1q1 = s1.questions.create(question_text:"What is the meaning of life")
    s1q1c1 = s1.questions.first.choices.create(choice_text:"To make beautiful and meaningful things")
    s1q1c2 = s1.questions.first.choices.create(choice_text:"To procreate")
    s1.questions.first.choices.create(choice_text:"I'm not sure")
    s1.questions.first.choices.create(choice_text:"Nothing")

  s1q2 = s1.questions.create(question_text:"How big do you think Big Bob is?")
    s1q2c1 = s1.questions.last.choices.create(choice_text:"Not big at all")
    s1q2c2 = s1.questions.last.choices.create(choice_text:"Quite large")
    s1.questions.last.choices.create(choice_text:"Very small")
    s1.questions.last.choices.create(choice_text:"Who is Big Bob?")


s2 = Survey.create(name:"Survey 2", category:"hip hop dance",creator_id:2)

  s2q1 = s2.questions.create(question_text:"Do you want to Hip Hop dance?")
  s2q2 = s2.questions.create(question_text:"How are you feeling today?")

s2.questions.first.choices.create(choice_text:"YES!")
s2.questions.first.choices.create(choice_text:"No")
s2.questions.first.choices.create(choice_text:"maybe")
s2.questions.first.choices.create(choice_text:"Another time")

s2.questions.last.choices.create(choice_text:"amazing")
s2.questions.last.choices.create(choice_text:"just okay")
s2.questions.last.choices.create(choice_text:"I'm questioning my life decisions")
s2.questions.last.choices.create(choice_text:"fantastic")

Selection.create(taker_id: 2, question_id: 1, choice_id: 1, survey_id: 1)
Selection.create(taker_id: 2, question_id: 2, choice_id: 1, survey_id: 1)


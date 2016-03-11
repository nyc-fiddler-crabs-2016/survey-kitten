User.create(username:"Bob", password:"password", email:"bob@bob.com")
User.create(username:"Big bob", password:"password", email:"bob@bob.com")


s1 = Survey.create(name:"Survey 1", category:"programming",creator_id:1)
s2 = Survey.create(name:"Survey 2", category:"hip hop dance",creator_id:2)


s1.questions.create(question_text:"What is the meaning of life")
s1.questions.create(question_text:"How big do you think Big Bob is?")

s2.questions.create(question_text:"Why do you suck?")
s2.questions.create(question_text:"Why?")


s1.questions.first.choices.create(choice_text:"Nothing")
s1.questions.first.choices.create(choice_text:"To procreate")

s1.questions.last.choices.create(choice_text:"Not big at all")
s1.questions.last.choices.create(choice_text:"Quite large")


s2.questions.first.choices.create(choice_text:"idk")
s2.questions.first.choices.create(choice_text:"Nothing")

s2.questions.last.choices.create(choice_text:"idk")
s2.questions.last.choices.create(choice_text:"you suck")



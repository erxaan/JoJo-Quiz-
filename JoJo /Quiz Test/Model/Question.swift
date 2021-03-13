//
//  Question.swift
//  Quiz Test
//
//  Created by Говоров Эрхаан on 26.08.2020.
//

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Что вы цените в людях?",
                type: .single,
                answers:
                    [Answer(text: "Целеустремленность", type: .Giorno),
                    Answer(text: "Ум", type: .Joseph),
                    Answer(text: "Доброта", type: .Josuke),
                    Answer(text: "Сила", type: .Jotaro),
                    Answer(text: "Честь", type: .Jonathan)]),
        
            Question(
                text: "Какой цвет вам нравится больше?",
                type: .multiple,
                answers:
                    [Answer(text: "Золотой", type: .Giorno),
                    Answer(text: "Фиолетовый", type: .Joseph),
                    Answer(text: "Розовый", type: .Josuke),
                    Answer(text: "Черный", type: .Jotaro),
                    Answer(text: "Синий", type: .Jonathan)]),
            
            Question(
                text: "Любите ли вы путешествовать?",
                type: .ranged,
                answers:
                    [Answer(text: "Ненавижу", type: .Josuke),
                    Answer(text: "Нервничаю", type: .Giorno),
                    Answer(text: "Не замечаю", type: .Jotaro),
                    Answer(text: "Люблю", type: .Jonathan),
                    Answer(text: "Обожаю", type: .Joseph)]),
        
            
            
            
        ]
    }
}

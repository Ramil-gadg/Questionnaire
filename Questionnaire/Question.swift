//
//  Question.swift
//  Questionnaire
//
//  Created by Рамил Гаджиев on 23.08.2021.
//

import Foundation

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

extension Question {
    
    static func getQuestion() -> [Question] {
        return [
            Question(text: "Какую пищу Вы предпочитаете?",
                     type: .single,
                     answers: [
                        Answer(text: "Стейк", type: .dog),
                        Answer(text: "Рыба", type: .cat),
                        Answer(text: "Морковь", type: .rabbit),
                        Answer(text: "Кукуруза", type: .turtle)
                     ]
            ),
            Question(text: "Что Вы любите делать?",
                     type: .multiple,
                     answers: [
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Кушать", type: .turtle)
                     ]
            ),
            Question(text: "Любите ли Вы поездки на машине?",
                     type: .ranged,
                     answers: [
                        Answer(text: "Обожаю", type: .dog),
                        Answer(text: "Люблю", type: .cat),
                        Answer(text: "Равнодушно", type: .rabbit),
                        Answer(text: "Ненавижу", type: .turtle)
                     ]
            )
        ]
    }
    
}

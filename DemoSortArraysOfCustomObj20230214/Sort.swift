//
//  Sort.swift
//  DemoSortArraysOfCustomObj20230214
//
//  Created by Xavier on 2/14/23.
//

import Foundation

struct Reminder {
    let id: UUID
    let desc: String
    let isFavorite: Bool
    let dueDate: Date
    
    init(desc: String, isFavorite: Bool, dueDate: Date) {
        self.id = UUID()
        self.desc = desc
        self.isFavorite = isFavorite
        self.dueDate = dueDate
    }
}

extension String {
    func asDateYYYYMMDD() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.date(from: self) ?? Date()
    }
}

extension Date {
    func asStringYYYYMMDD() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.string(from: self)
    }
}

let reminders: [Reminder] = [
    .init(desc: "Reminder 1", isFavorite: false, dueDate: "20230101".asDateYYYYMMDD()),
    .init(desc: "Reminder 2", isFavorite: false, dueDate: "20230201".asDateYYYYMMDD()),
    .init(desc: "Reminder 3", isFavorite: true, dueDate: "20221201".asDateYYYYMMDD()),
    .init(desc: "Reminder 4", isFavorite: true, dueDate: "20230107".asDateYYYYMMDD()),
    .init(desc: "Reminder 5", isFavorite: false, dueDate: "20221101".asDateYYYYMMDD())
]

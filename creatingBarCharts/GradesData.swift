//
//  WeatherData.swift
//  creatingBarCharts
//
//  Created by Yukun Xie on 2024/11/4.
//

import Foundation

struct PastGrades: Identifiable {
    let id = UUID()
    let date: Date
    let grades: Int

    init(month: Int, grades: Int) {
        self.date = Calendar.current.date(from: .init(month: month)) ?? Date()
        self.grades = grades
    }
}



let ninethGrade = [
    PastGrades(month: 1, grades: 92),
    PastGrades(month: 2, grades: 90),
    PastGrades(month: 4, grades: 91),
    PastGrades(month: 6, grades: 93)
]

let tenthGrade = [
    PastGrades(month: 1, grades: 92),
    PastGrades(month: 2, grades: 93),
    PastGrades(month: 4, grades: 94),
    PastGrades(month: 6, grades: 94)
]

let eleventhGrade = [
    PastGrades(month: 1, grades: 93),
    PastGrades(month: 2, grades: 93),
    PastGrades(month: 4, grades: 94),
    PastGrades(month: 6, grades: 95)
]

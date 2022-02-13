//
//  Absence.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 03/02/2022.
//

import Foundation

class Absence : Codable {
    let takenOn:Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map{StudentAbsence(student: $0)}
    
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}

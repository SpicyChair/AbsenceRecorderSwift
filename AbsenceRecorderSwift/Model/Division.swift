//
//  Division.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 23/01/2022.
//

import Foundation


class Division: Codable  {
    let code: String
    var students:[Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(date: Date) -> Absence? {
        absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    func createAbsenceOrGetExistingIfAvailable(date: Date) -> Absence {
        //if exists, return it else create new one
            if let existingAbsence = self.getAbsence(date: date) {
                return existingAbsence
            } else {
                let absence = Absence(date: date, students: students)
                absences.append(absence)
                return absence
            }
        }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let divisions = Division(code:code)
        for i in 0 ... size {
            divisions.students.append(Student(forename: "Forename \(i)", surname: "Surname", birthday: Date()))
        }
        return divisions
    }
    
    static let examples = [Division.createDivision(code: "CMsiV-2", of: 10),
                           Division.createDivision(code: "CComX-1", of: 8),
                           Division.createDivision(code: "CGeoZ-1", of: 12),
                           Division.createDivision(code: "CEngX-1", of: 11)]
    
    #endif
}

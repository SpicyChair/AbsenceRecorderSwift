//
//  Division.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 23/01/2022.
//

import Foundation


class Division {
    let code: String
    var students:[Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code:code)
        for _ in 0 ... size {
            division.students.append(Student(forename: "Test", surname: "Student", birthday: Date()))
        }
        return division
    }
    
    static let examples = [Division.createDivision(code: "CMsiV-2", of: 10), Division.createDivision(code: "CComX-1", of: 8),Division.createDivision(code: "CGeoZ-1", of: 12), Division.createDivision(code: "CEngX-1", of: 11)]
    
    #endif
}

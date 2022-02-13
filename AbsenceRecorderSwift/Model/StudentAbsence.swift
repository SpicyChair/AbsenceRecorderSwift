//
//  StudentAbsence.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 03/02/2022.
//

import Foundation
import SwiftUI

class StudentAbsence: ObservableObject, Codable {
    let student: Student
    @Published var isAbsent: Bool = false
    
    init(student: Student) {
        self.student = student
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        isAbsent = try container.decode(Bool.self, forKey: .isAbsent)
    }
    
    private enum CodingKeys: CodingKey {
        case student, isAbsent
        
    }
    
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: .student)
        try container.encode(isAbsent, forKey: .isAbsent)
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.examples[0])
    #endif
                                        
}

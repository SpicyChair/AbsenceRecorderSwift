//
//  Student.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 23/01/2022.
//

import Foundation

class Student {
    let forename:String
    let surname:String
    let birthday:Date
    
    init(forename: String, surname:String, birthday:Date) {
        self.birthday = birthday
        self.forename = forename
        self.surname = surname
    }
    
    #if DEBUG
    static let examples = [Student(forename: "Hi", surname: "there", birthday: Date())]
    #endif
    
}

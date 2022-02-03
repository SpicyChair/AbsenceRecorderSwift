//
//  Date.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 26/01/2022.
//

import Foundation

extension Date {
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
    
    func addDaysToDate(days:Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: self) ?? self
    }
}

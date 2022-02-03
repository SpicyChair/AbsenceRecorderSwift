//
//  Division.swift
//  AbsenceRecorderSwiftTests
//
//  Created by Hin, Ethan-Scott (WING) on 03/02/2022.
//

import XCTest

@testable import AbsenceRecorderSwift

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWIthAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
                let division = Division(code: "TestDiv")
                let dateToday = Date()
                let dateLaterToday = Date(timeIntervalSinceNow: 100)
                let dateFuture = Date(timeIntervalSinceNow: 1000000000000001)
                
                let absence1 = Absence(date: dateFuture, students: Student.examples)
                let absence2 = Absence(date: dateToday, students: Student.examples)
                
                division.absences.append(absence1)
                division.absences.append(absence2)
                
                //act
                let actual = division.getAbsence(for: dateLaterToday)
                
                //assert
                XCTAssertNotNil(actual)
                if let actualNotNil = actual{
                    XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
                }
            
        }
    func testIfAbsenceWithExistingDateIsReturnedIfExistingElseReturnNew() {
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateFuture = Date(timeIntervalSinceNow: 1000000000000001)
        
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
        let todayAbsence = division.createAbsenceOrGetExistingIfAvailable(date: dateToday)
        
        XCTAssertEqual(absence.takenOn, todayAbsence.takenOn)
        
        let futureAbsence = division.createAbsenceOrGetExistingIfAvailable(date: dateFuture)
        XCTAssertEqual(dateFuture, futureAbsence.takenOn)
    }

}

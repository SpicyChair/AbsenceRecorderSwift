//
//  AbsenceItem.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 03/02/2022.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    
    var body: some View {
        HStack () {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            Button(studentAbsence.isAbsent ? "O" : "X", action: {toggleAbsent()} )
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}

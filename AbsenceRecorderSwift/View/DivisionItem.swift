//
//  DivisionItem.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 26/01/2022.
//

import SwiftUI

struct DivisionItem: View {
    
    let division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle")
            Text(division.code)
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division.createDivision(code: "CMsiV-2", of: 10))
    }
}

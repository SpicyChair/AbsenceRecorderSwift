//
//  AbsenceView.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 27/01/2022.
//

import SwiftUI

struct AbsenceView: View {
    
    let division: Division
    var body: some View {
        Text("AbsenceView: \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}

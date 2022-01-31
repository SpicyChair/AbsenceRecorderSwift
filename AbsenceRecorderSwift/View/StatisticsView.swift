//
//  StatisticsView.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 27/01/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
        
                VStack(alignment: .leading, spacing: 5) {
                        Text(division.code)
                            .bold()
                        Text("Average attendance: \(Int.random(in: 1..<100))%")
                }.padding()
            }
            .navigationTitle("Statistics")
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}

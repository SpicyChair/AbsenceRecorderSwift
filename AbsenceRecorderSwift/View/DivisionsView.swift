//
//  ContentView.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 23/01/2022.
//

import SwiftUI

struct DivisionsView: View {
    
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(date: Date()))) {
                    DivisionItem(division: division)
                }
                    
            }
            .navigationTitle(currentDate.getShortDate())
                .toolbar() {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            currentDate = currentDate.addDaysToDate(days: -1)
                            
                        }) {
                            Image(systemName: "arrow.backward")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            currentDate = currentDate.addDaysToDate(days: 1)
                            
                        }) {
                            Image(systemName: "arrow.forward")
                        }
                    }
                }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
            .environmentObject(StateController())
    }
}

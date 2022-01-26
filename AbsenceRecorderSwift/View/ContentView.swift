//
//  ContentView.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 23/01/2022.
//

import SwiftUI

struct ContentView: View {
    let divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                
                DivisionItem(division: division)
                    
            }
            .navigationTitle(currentDate.getShortDate())
                .toolbar() {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            currentDate.addDaysToDate(days: -1)
                            
                        }) {
                            Image(systemName: "arrow.backward")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            currentDate.addDaysToDate(days: 1)
                            
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
        ContentView(divisions: Division.examples)
    }
}

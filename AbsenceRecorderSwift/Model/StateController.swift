//
//  StateController.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 31/01/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}

//
//  StateController.swift
//  AbsenceRecorderSwift
//
//  Created by Hin, Ethan-Scott (WING) on 31/01/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        divisions = Division.examples
        //loadFromFile()
    }
    
    func loadFromFile() {
        //get url to file
        let url = getPathFromDocDirectoryURL(filename: "divisions.json")
        
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
        
    }
    func saveToFile() {
        //create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            if let json = String(data: encoded, encoding: .utf8) {
                //take converted objects and convert them into string
                
                let url = getPathFromDocDirectoryURL(filename: "divisions.json")
                do {
                    //write json to file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Unable to form JSON string")
            }
            
            //TODO: ask q about the try?
        }
    }
    
    private func getPathFromDocDirectoryURL(filename: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        return userPath.appendingPathComponent("divisions.json")
    }
}

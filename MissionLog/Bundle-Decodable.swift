//
//  Bundle-Decodable.swift
//  MissionLog
//
//  Created by shalinth adithyan on 26/06/25.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file ) in bundle.")
        }
        guard let data = try? Data(contentsOf: url)else {
            fatalError("Failed to load \(file) from bundle. ")
        }
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode([String : Astronaut].self , from: data)
        }catch DecodingError.keyNotFound(let key, let context){
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
        }catch DecodingError.typeMismatch(_,let context){
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription) ")
        }catch DecodingError.valueNotFound(let type,let context){
            fatalError("Failed tp decode \(file) from bundle due to missing \(type) value - \(context.debugDescription)")
        }catch{
            fatalError("Failed to decode \(file) from bundle : \(error.localizedDescription)")
        }
    }
}

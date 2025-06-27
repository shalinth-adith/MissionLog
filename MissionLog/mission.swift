//
//  mission.swift
//  MissionLog
//
//  Created by shalinth adithyan on 27/06/25.
//

import Foundation


struct Mission: Codable , Identifiable {
    struct crewRole : Codable {
        let name: String
        let role: String
    }
    let id : Int
    let launchDate: String?
    let crew: [crewRole]
    let description: String
}

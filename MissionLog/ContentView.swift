//
//  ContentView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 18/06/25.
//

import SwiftUI

struct ContentView: View {
    let astronauts:[String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        NavigationStack{
            Text(String(astronauts.count))
             
        }
    }
}

#Preview {
    ContentView()
}

//
//  AstronautView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 29/06/25.
//

import SwiftUI

struct AstronautView: View {
    let astronaut : Astronaut
    var body: some View {
        NavigationStack {
            ScrollView{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                Text(astronaut.description)
                    .padding()
            }
            
            .navigationTitle(astronaut.name)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color(red: 0/255, green: 0/255, blue: 128/255)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
    }
}

#Preview {
    let astronauts: [String : Astronaut] = Bundle.main.decode("astronauts.json")
    return AstronautView(astronaut:astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}

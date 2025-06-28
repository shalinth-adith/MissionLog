//
//  MissionView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 28/06/25.
//

import SwiftUI

struct MissionView: View {
    let mission : Mission
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .containerRelativeFrame(.horizontal) { width, axis in
                            width * 0.8
                        }
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color(red: 212/255, green: 175/255, blue: 55/255)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                )
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    return MissionView(mission: missions[0])
        .preferredColorScheme(.dark)
}

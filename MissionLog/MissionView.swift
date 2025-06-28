//
//  MissionView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 28/06/25.
//

import SwiftUI

struct MissionView: View {
    struct crewMember: Codable{
        let role: String
        let astronaut: Astronaut
    }
    
    let mission : Mission
    let crew: [crewMember]
    
    
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
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission

        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return crewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }

}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String : Astronaut] = Bundle.main.decode("astronauts.json")
    return MissionView(mission: missions[0] , astronauts: astronauts)
        .preferredColorScheme(.dark)
}

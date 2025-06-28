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
                            width * 0.6
                        }
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(crew , id: \.role) { crewMember in
                                NavigationLink{
                                    Text("Astronaut details ")
                                }label:{
                                    HStack{
                                        Image(crewMember.astronaut.id)
                                            .resizable()
                                            .frame(width: 104, height: 72)
                                            .clipShape(.capsule)
                                            .overlay(
                                                Capsule()
                                                    .strokeBorder(.white , lineWidth:1)
                                                )
                                        VStack(alignment: .leading){
                                            Text(crewMember.astronaut.name)
                                                .foregroundStyle(.white)
                                                .font(.headline)
                                            
                                            Text(crewMember.role)
                                                .foregroundStyle(.secondary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.bottom)
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color(red: 0/255, green: 0/255, blue: 128/255)]),
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

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
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(missions){ mission in
                        NavigationLink{
                            Text("Details for view")
                        }label: {
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100,height: 100)
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                    
                                    Text(mission.launchDate ?? "No date")
                                        .font(.caption)
                                }
                              }
                        }
                    }
                }
            }
            .navigationTitle("Mission Log")
             
        }
    }
}

#Preview {
    ContentView()
}

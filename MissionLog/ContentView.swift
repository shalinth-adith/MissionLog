//
//  ContentView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 18/06/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var showMainScreen: Bool

    
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
                                    .padding()
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .scrollContentBackground(.hidden)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color(red: 0/255, green: 0/255, blue: 128/255)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                )
            
            .navigationTitle("Mission Log")
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showMainScreen = false
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                        Text("Back")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView(showMainScreen: .constant(true))
}

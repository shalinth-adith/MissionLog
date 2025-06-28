//
//  EntryView.swift
//  MissionLog
//
//  Created by shalinth adithyan on 28/06/25.
//

import SwiftUI


import SwiftUI

struct EntryView: View {
    @State private var showMainScreen = false

    var body: some View {
        if showMainScreen {
                    ContentView(showMainScreen: $showMainScreen)
            } else {
            VStack(spacing: 15) {
                Image("mainlogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)

                Text("Mission Log")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)

                Button("Next") {
                    withAnimation {
                        showMainScreen = true
                    }
                }
                .padding()
                .frame(width: 150)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
           
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color(red: 0/255, green: 0/255, blue: 128/255)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                )
            .ignoresSafeArea()
                    
            
        }
    }
}


#Preview {
    EntryView()
}

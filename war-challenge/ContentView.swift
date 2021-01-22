//
//  ContentView.swift
//  war-challenge
//
//  Created by Kyle Sherrington on 2021-01-18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
                    
            Image("background")
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    
//                    playerScore += 1
//                    cpuScore += 1
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .padding(.bottom, 15.0)
                            .font(.headline)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom)
                            .font(.headline)
                            
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                }
                Spacer()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
} // Struct

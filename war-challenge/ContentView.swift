//
//  ContentView.swift
//  war-challenge
//
//  Created by Kyle Sherrington on 2021-01-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
                    
            Image("background")
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .padding(.bottom, 15.0)
                            .font(.headline)
                            
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom)
                            .font(.headline)
                            
                        Text("0")
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

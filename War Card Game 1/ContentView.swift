//
//  ContentView.swift
//  War Card Game 1
//
//  Created by Rigo Alvarez on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
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
                
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }


                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
            
        }
        .foregroundColor(.white)
        Spacer()
        
        
        
        
        
    }
    
    func deal(){
        // Randomize the players card
        var playerCardValue = String(Int.random(in: 2...14))
        playerCard = "card" + playerCardValue
        
        // Randomize CPU card
        var cpuCardValue = String(Int.random(in: 2...14))
        cpuCard = "card" + cpuCardValue
        
        // Update the score
        // Add 1 to player score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        // Add 1 to cpu score
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
             
         
            
        
    }
}

#Preview {
    ContentView()
}

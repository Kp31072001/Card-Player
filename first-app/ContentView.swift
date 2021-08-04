//
//  ContentView.swift
//  first-app
//
//  Created by Kankan Paramanik on 18/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    //using random method to generate a random number between 2 and 14
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards and score
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                       
                    if playerRand>cpuRand {
                        playerScore += 1
                    }
                    else if playerRand<cpuRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("Palyer")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

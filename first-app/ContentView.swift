//
//  ContentView.swift
//  first-app
//
//  Created by Kankan Paramanik on 18/07/21.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("Palyer")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            
                        Text("0")
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
                        Text("0")
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

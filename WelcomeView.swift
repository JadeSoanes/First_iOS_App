//
//  ContentView.swift
//  CFGHello
//
//  Created by Jade Soanes on 02/09/2023.
//

import SwiftUI
struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Draughts")
                .font(.largeTitle)
            NavigationStack{
                VStack(alignment: .leading){
                    NavigationLink(destination:GameModeView()){
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(Color.green)
                            Text("Play")
                        }
                    }
                    NavigationLink(destination:StatsView()){
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(Color.green)
                            Text("Stats")
                        }
                    }
                }
            }
            Text("CFG iOS App Dev MOOC")
        }
        .padding()
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


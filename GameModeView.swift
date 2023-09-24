//
//  GameModeView.swift
//  CFGHello
//
//  Created by Jade Soanes on 08/09/2023.
//

import SwiftUI
struct GameModeView: View {
    var body: some View {
        VStack {
            Text("Game Mode")
                .padding()
                .font(.largeTitle)
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "square.grid.3x3.square")
                        .imageScale(.large)
                        .foregroundColor(Color.green)
                    Text("Normal")
                }
                HStack{
                    Image(systemName: "timer")
                        .imageScale(.large)
                        .foregroundColor(Color.green)
                    Text("Timed")
                }
            }
        }
        .padding()
    }
}
struct GameModeView_Previews: PreviewProvider {
    static var previews: some View {
        GameModeView()
    }
}


//
//  StatsView.swift
//  CFGHello
//
//  Created by Jade Soanes on 08/09/2023.
//

import SwiftUI
struct StatsView: View {
@State var userProfile: UserProfile = UserProfile(username: "CFG", gamesAttempted: 0)
    @State private var dataSaved : String = " "
    
    var body: some View {
        VStack{
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            Form{
                HStack{
                    TextField("Username", text:$userProfile.username)
                        .onSubmit {
                            UserDefaults.standard.set(userProfile.username, forKey: "username")
                            UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
                            dataSaved = "Saved"
                        }
                }
                HStack{
                    Text("Games attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
            Text("\(dataSaved)")
        }
        .onAppear{
            if(UserDefaults.standard.object(forKey: "username") != nil){
                userProfile.username = UserDefaults.standard.string(forKey: "username")!
            }
            if (UserDefaults.standard.object(forKey: "gamesAttempted") != nil){
                UserDefaults.standard.integer(forKey: "gamesAttempted")
            }
        }
    }
}
struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}

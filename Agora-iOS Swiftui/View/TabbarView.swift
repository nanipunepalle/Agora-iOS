//
//  TabbarView.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 19/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Image(systemName: "house.fill")
                Text("Dash Board")
            }
            Text("Elections").tabItem{
                Image(systemName: "tray.fill")
                Text("Elections")
            }
            Text("Notifications").tabItem{
                Image(systemName: "bell.fill")
                Text("Notifications")
            }
            Text("Profile").tabItem{
                Image(systemName: "person.circle.fill")
                Text("Notifications")
            }
            Text("Contact Us").tabItem{
                Image(systemName: "message.fill")
                Text("Notifications")
            }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView().previewDevice("iPhone Xr")
    }
}

//
//  ContentView.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 18/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack{
                Text("Dash Board").font(.system(size: 50)).foregroundColor(.orange)
                
                HStack{
                    Spacer()
                    NavigationLink(destination: self) {
                        Dashboardcell1(title: "Active", count: 10)
                    }
                    .frame(width: 138, height: 108)
                    .background(Color("OrangeColor"))
                    .cornerRadius(15)
                    
                    Spacer()
                    
                    NavigationLink(destination: self) {
                        Dashboardcell1(title: "Pending", count: 05)
                    }
                    .frame(width: 138, height: 108)
                    .background(Color("GreenColor"))
                    .cornerRadius(15)
                    Spacer()
                }.padding()
                
                
                HStack{
                    Spacer()
                    NavigationLink(destination: self) {
                        Dashboardcell1(title: "Completed", count: 05)
                    }
                    .frame(width: 138, height: 108)
                    .background(Color("GreenColor"))
                    .cornerRadius(15)
                    
                    Spacer()
                    NavigationLink(destination: self) {
                        Dashboardcell1(title: "Total", count: 20)
                    }
                    .frame(width: 138, height: 108)
                    .background(Color("OrangeColor"))
                    .cornerRadius(15)
                    
                    Spacer()
                }.padding()
                Spacer()
            }
            
        }
        //        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}

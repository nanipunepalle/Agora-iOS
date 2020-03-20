//
//  Dashboardcell2.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 19/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct Dashboardcell2: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
//            background(Color(.cyan))
            HStack{
                Text("Election Name").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
                Text("Ends in 2 days").foregroundColor(Color("GreenColor"))
                
            }.padding()
//            Spacer()
            VStack{
                Text("50%").font(.system(size: 35)).foregroundColor(Color("GreenColor"))
                Text("Polled").foregroundColor(Color("GreenColor"))
                }.frame(width: 108, height: 100, alignment: .center)
                .clipShape(Circle()).overlay(Circle().stroke(Color("GreenColor"), lineWidth: 5))
//            Spacer()
//            Spacer()
            HStack{
                Spacer()
                Text("200").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
                Spacer()
                Text("100").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
                
            }
            
            HStack{
                Spacer()
                Text("Total Voters").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
                Spacer()
                Text("Votes Polled").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
                
            }
            HStack{
                
                Text("Candidates").bold().font(.system(size: 25)).foregroundColor(Color("GreenColor"))
                Spacer()
            }.padding()
            
//            Text("bye")
//            Spacer()
        }
        
    }
}

struct Dashboardcell2_Previews: PreviewProvider {
    static var previews: some View {
        Dashboardcell2().previewLayout(.fixed(width: 351, height: 250))
    }
}

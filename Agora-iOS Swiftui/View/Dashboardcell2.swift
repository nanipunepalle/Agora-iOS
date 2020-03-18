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
                Text("Election Name").bold().font(.system(size: 25))
                Spacer()
                Text("Ends in 2 days")
                
            }.padding()
            Spacer()
            HStack{
                Spacer()
                Text("200").bold().font(.system(size: 25))
                Spacer()
                Spacer()
                Text("100").bold().font(.system(size: 25))
                Spacer()
                
            }
            
            HStack{
                Spacer()
                Text("Total Voters").bold().font(.system(size: 25))
                Spacer()
                Spacer()
                Text("Votes Polled").bold().font(.system(size: 25))
                Spacer()
                
            }
            HStack{
                
                Text("Candidates").bold().font(.system(size: 25))
                Spacer()
            }.padding()
            
//            Text("bye")
//            Spacer()
        }
        
    }
}

struct Dashboardcell2_Previews: PreviewProvider {
    static var previews: some View {
        Dashboardcell2().previewLayout(.fixed(width: 351, height: 244.9))
    }
}

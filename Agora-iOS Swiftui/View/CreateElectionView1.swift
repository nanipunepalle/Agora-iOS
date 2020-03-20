//
//  CreateElectionView1.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 19/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct CreateElectionView1: View {
    @State private var name: String = "Tim"
    var body: some View {
        VStack{
            Text("Enter Details")
            VStack{
                HStack {
                    Text("Election Name").offset(x: 5, y: 10)
                    Spacer()
                }
                TextField("Election Name", text: $name).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
            }
            
            
        }.padding()
        
    }
}

struct CreateElectionView1_Previews: PreviewProvider {
    static var previews: some View {
        CreateElectionView1()
    }
}

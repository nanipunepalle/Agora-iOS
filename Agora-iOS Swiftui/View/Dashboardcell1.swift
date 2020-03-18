//
//  Dashboardcell1.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 18/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct Dashboardcell1: View {
    var title: String
    var count: Int
    
    var body: some View {
            VStack{
                Text(title)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Text(String(count))
                    .font(.system(size: 50)).foregroundColor(.white)
                
            }
    }
}

struct Dashboardcell1_Previews: PreviewProvider {
    static var previews: some View {
        Dashboardcell1(title: "Active", count: 10).previewLayout(.fixed(width: 138, height: 108))
    }
}

//
//  ElectionDataModel.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 22/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import Foundation

class ElectionDataModel: ObservableObject{
    @Published var name:String = ""
    @Published var desc:String = ""
    @Published var startdate: String = ""
    @Published var enddate: String = ""
    @Published var candidates: [String] = []
    @Published var votingAlgorithm:String = ""
}

//class ElectionData: ObservableObject{
//    @Published var data: [ElectionDataModel] = []
//}

//
//  ContentView.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 18/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "ElectionDetails")
    
    @State var selection: Int? = nil
    @State  var electionName: String = ""
    @State  var startDate: String = ""
    @State  var endDate: String = ""
    @State  var candidates: [String] = []
    @State  var desc: String = ""
    @State  var count: Int = 0
    @State  var votingAlgorithm: String = ""
    //    @ObservedObject var electionsDataa = ElectionDataModel()
//    @ObservedObject var electionData: ElectionData
    //    var electionData = [ElectionData]()
    //    var electionData = ElectionData(data: <#T##[edata]#>)
    
    let width = UIScreen.main.bounds.width
    
//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: "GreenColor" ,.font : UIFont(name: "Georgia-Bold", size: 25)!]
//    }
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink(destination: self) {
                            Dashboardcell1(title: "Active", count: 10)
                        }
                        .frame(width: 138, height: 108)
                        .background(Color("OrangeColor"))
                        .cornerRadius(CGFloat(15))
                        
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
                    Text("Active Elections")
                        .bold().padding(3).foregroundColor(Color("GreenColor"))
                        .font(.system(size: 30))
                    NavigationLink(destination: self) {
                        ScrollView(.horizontal, showsIndicators: true, content: {
                            HStack{
                                Dashboardcell2(name: electionName).frame(width: width-40)
                                Dashboardcell2(name: electionName).frame(width: width-40)
                            }
                        })
                        
                        
                    }.background(Color("Color")).padding().cornerRadius(40)
                    
                    NavigationLink(destination: CreateElectionView1(), tag: 1, selection: $selection) {
                        Button(action: {
                            self.selection = 1
                        }) {
                            Text("Create Election")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                        }.padding()
                            .frame(width: 318, height: 50)
                            .background(Color("GreenColor"))
                            .cornerRadius(30)
                    }
                }
            }.navigationBarTitle(Text("Dash Board")
                .foregroundColor(.red),displayMode: .inline)
        }.onAppear {
            do{
                //                var c = 0
                let result = try self.context.fetch(self.request)
//                if let rresult = result as? [NSManagedObject]{
//                                        self.electionData = rresult
//                    self.electionData.data.append(<#T##newElement: ElectionDataFetchModel##ElectionDataFetchModel#>)
//                    print(self.electionData.data[0].name)
//                    print(self.electionData.data[1].name)
                    
//                }
                for data in result as! [NSManagedObject]{
                    self.electionName = data.value(forKey: "name") as! String
                    self.startDate = data.value(forKey: "startDate") as! String
                    self.endDate = data.value(forKey: "endDate") as! String
                    self.desc = data.value(forKey: "edescription") as! String
                    let candidateData: Data = data.value(forKey: "candidates") as! Data
                    self.candidates = try! JSONDecoder().decode([String].self, from: candidateData)
                    //                    self.votingAlgorithm = data.value(forKey: "")
                    //                    let new = ElectionData(name: self.electionName, desc: self.desc, startdate: self.startDate, enddate: self.endDate, candidates: self.candidates)
                    //                    self.electionData.append(new)
                    //                    self.electionData.append(new)
                    //                    self.electionData.data[c+1].candidates = self.candidates
                    //                    self.electionData.data[c].name = self.electionName
                    //                    self.electionData.data[c].desc = self.desc
                    //                    self.electionData.data[c].startdate = self.startDate
                    //                    self.electionData.data[c].enddate = self.endDate
                    //                    self.electionData.data.append(<#T##newElement: ElectionDataModel##ElectionDataModel#>)
                    //                    c += 1
//                    ElectionDataFetchModel()
//                    self.electionData.data.append(<#T##newElement: ElectionDataFetchModel##ElectionDataFetchModel#>)
//                    self.electionData.data.append(<#T##newElement: ElectionDataFetchModel##ElectionDataFetchModel#>)
                }
                //                print(self.electionData.data[1].name)
                //                print(self.electionData.data[0].name)
                
            }
            catch{
                print("error")
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}

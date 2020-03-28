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
    @State private var electionName: String = ""
    @State private var startDate: String = ""
    @State private var endDate: String = ""
    @State private var candidates: [String] = []
    @State private var desc: String = ""
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.orange ,.font : UIFont(name: "Georgia-Bold", size: 35)!]
    }
    func saveItems(){
        do{
            try context.save()
        }
        catch{
            print(error)
        }
    }
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
                        Dashboardcell2()
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
//                var elections : FetchedResults<ElectionDetails>
                let result = try self.context.fetch(self.request)
                for data in result as! [NSManagedObject]{
//                    print(data.value(forKey: "name")!)
                    self.electionName = data.value(forKey: "name") as! String
                    self.startDate = data.value(forKey: "startDate") as! String
                    self.endDate = data.value(forKey: "endDate") as! String
                    self.desc = data.value(forKey: "edescription") as! String
//                    self.candidates = [data.value(forKey: "candidates") as! String]
                    print(self.candidates)
                }
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

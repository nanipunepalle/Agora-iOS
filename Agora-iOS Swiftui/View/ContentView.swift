//
//  ContentView.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 18/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
//        UINavigationBar.appearance().backgroundColor = .yellow
        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 50)!]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.orange ,.font : UIFont(name: "Georgia-Bold", size: 35)!]
//        UINavigationBar.appearance().titlet
    }

    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    VStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
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
                        //                Spacer()
                        NavigationLink(destination: self) {
                            Dashboardcell2()
                        }.background(Color("Color")).padding().cornerRadius(40)
//                        Button(action: {
//                            Text("success")
//                        }) {
//                            Text("Create Election").background(Color("GreenColor")).foregroundColor(.white).font(.system(size: 30))
//                        }.padding()
//                            .frame(width: 318, height: 50)
//                            .background(Color("GreenColor")).cornerRadius(30)
                    }
                    
                }
            }.navigationBarTitle(Text("Dash Board").foregroundColor(.red),displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}

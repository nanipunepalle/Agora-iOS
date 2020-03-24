//
//  CreateElectionView1.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 19/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct CreateElectionView1: View {
    @State private var name: String = ""
    @State private var desc: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    @State private var startDateString: String = ""
    @State private var endDateString: String = ""
    @State private var selection: Int? = nil
    @State private var showingAlert: Bool = false
    @State var showDatePicker: Bool = false
    var body: some View {
        VStack{
            Text("Enter Details").bold().font(.system(size: 40)).foregroundColor(Color("OrangeColor"))
            Spacer()
            VStack{
                HStack {
                    Text("Election Name").bold().offset(x: CGFloat(5), y: CGFloat(10)).foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $name).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
                
            }
            VStack{
                HStack {
                    Text("Description").bold().offset(x: 5, y: 10).foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $desc).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 70, maxHeight: 100, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
            }
            VStack{
                HStack {
                    Text("Start Date").bold().offset(x: 5, y: 10).foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $startDateString,onEditingChanged: { (editting) in
                    self.showDatePicker = editting
                }).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
            }
            VStack{
                HStack {
                    Text("End Date").bold()
                        .offset(x: 5, y: 10)
                        .foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $endDateString).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
            }
            Spacer()
            NavigationLink(destination: CreateElectionView2(), tag: 1, selection: $selection) {
                Button(action: {
                    print("success")
                }) {
                    Text("Next").foregroundColor(.white)
                    .font(.system(size: 30))
                }.padding()
                .frame(width: 318, height: 50)
                .background(Color("GreenColor"))
                .cornerRadius(30)
            }
            
        }.padding()
        
    }
}

struct CreateElectionView1_Previews: PreviewProvider {
    static var previews: some View {
        CreateElectionView1()
    }
}

extension CreateElectionView1{
    func datetostring(date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MMM/yyyy HH:mm"
        return dateFormatter.string(from: date)
    }
    
}

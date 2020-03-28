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
    @State private var showDatePicker: Bool = false
    @State var alertMessage: String? = ""
    @EnvironmentObject var electionCreateData: ElectionDataModel
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
                TextField("", text: $startDateString,onEditingChanged: {(editting) in
                    self.showDatePicker = editting
                }).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
                    .sheet(isPresented: $showDatePicker, onDismiss: {
                        self.startDateString = self.datetostring(date: self.startDate)
                        self.endDateString = self.datetostring(date: self.endDate)
                    }) {
                        DatePicker(selection: self.$startDate) {
                            Text("Select Start date")
                        }
                        DatePicker(selection: self.$endDate) {
                            Text("Select end date")
                        }
                }
            }
            VStack{
                HStack {
                    Text("End Date").bold()
                        .offset(x: 5, y: 10)
                        .foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $endDateString,onEditingChanged: {(editting) in
                    self.showDatePicker = editting
                }).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
                    .sheet(isPresented: $showDatePicker, onDismiss: {
                        self.startDateString = self.datetostring(date: self.startDate)
                        self.endDateString = self.datetostring(date: self.endDate)
                    }) {
                        DatePicker(selection: self.$startDate) {
                            Text("Select Start date")
                        }
                        DatePicker(selection: self.$endDate) {
                            Text("Select end date")
                        }
                }
            }
            Spacer()
            NavigationLink(destination: CreateElectionView2(), tag: 1, selection: $selection) {
                Button(action: {
                    self.electionCreateData.name = self.name
                    self.electionCreateData.desc = self.desc
                    self.electionCreateData.startdate = self.startDateString
                    self.electionCreateData.enddate = self.endDateString
                    self.alertMessage = self.validateFields()
                    if self.alertMessage != nil{
                        self.showingAlert = true
                    }
                    else{
                        self.selection = 1
                    }
                }) {
                    Text("Next").foregroundColor(.white)
                        .font(.system(size: 30))
                }.padding()
                    .frame(width: 318, height: 50)
                    .background(Color("GreenColor"))
                    .cornerRadius(30)
            }.alert(isPresented: $showingAlert) { () -> Alert in
                Alert(title: Text("invalid"), message: Text(alertMessage ?? "invalid"), dismissButton: .default(Text("Got it!")))
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
    func validateFields() -> String?{
        if name == "" || desc == "" || startDateString == "" || endDateString == "" {
            return  "Please fill in all fields"
        }
        //        let email = emailidTextfField.text!.lowercased()
        //        if isValidEmail(email) == false
        //        {
        //            return "Invalid Email"
        //        }
        //        let updatedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //        if isPasswordValid(updatedPassword) == false{
        //            return "Password must have 8 characters with atleast one Alphabet and one Number"
        //        }
        
        return nil
    }
    
}

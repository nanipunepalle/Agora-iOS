//
//  CreateElectionView2.swift
//  Agora-iOS Swiftui
//
//  Created by Lalith on 19/03/20.
//  Copyright © 2020 NANI. All rights reserved.
//

import SwiftUI

struct CreateElectionView2: View {
    @State private var cname: String = ""
    @State private var candidates: [String] = []
    @State var selection: Int? = nil
    @State var alertMessage: String? = ""
    @State private var showingAlert: Bool = false
    @EnvironmentObject var electionCreateData: ElectionDataModel
    
    var body: some View {
        VStack {
            Text("Add Candidates").bold().font(.system(size: 40)).foregroundColor(Color("OrangeColor"))
            VStack{
                HStack {
                    Text("Candidate Name").bold().offset(x: CGFloat(5), y: CGFloat(10)).foregroundColor(Color("OrangeColor"))
                    Spacer()
                }
                TextField("", text: $cname).padding().frame(minWidth: 100,maxWidth: 500, minHeight: 45, maxHeight: 45, alignment: .center).cornerRadius(20).border(Color("GreenColor"))
                
            }
            NavigationLink(destination: self , tag: 1, selection: $selection) {
                Button(action: {
                    self.alertMessage = self.validateFields()
                    if self.alertMessage != nil{
                        self.showingAlert = true
                    }
                    else{
                        self.candidates.append(self.cname)
                    }
                    
                }) {
                    Text("Add Candidate")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }.padding()
                    .frame(width: 318, height: 50)
                    .background(Color("GreenColor"))
                    .cornerRadius(30)
            }.alert(isPresented: $showingAlert) { () -> Alert in
                Alert(title: Text("invalid"), message: Text(alertMessage ?? "invalid"), dismissButton: .default(Text("Got it!")))
            }
            
            
            List{
                ForEach(candidates,id: \.self) { (candidate)  in
                    Text(candidate).font(.system(size: 30)).foregroundColor(Color("GreenColor"))
                }
            }
            Spacer()
            NavigationLink(destination: CreateElectionView3(), tag: 2, selection: $selection) {
                Button(action: {
                    self.selection = 2
                    self.electionCreateData.candidates = self.candidates
                }) {
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }.padding()
                    .frame(width: 318, height: 50)
                    .background(Color("GreenColor"))
                    .cornerRadius(30)
            }
            Spacer()
        }.padding()
    }
}

struct CreateElectionView2_Previews: PreviewProvider {
    static var previews: some View {
        CreateElectionView2().previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}


extension CreateElectionView2{
    
    func validateFields() -> String?{
        if cname == ""{
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

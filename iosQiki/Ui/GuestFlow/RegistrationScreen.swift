//
//  RegistrationScreen.swift
//  iosQiki
//
//  Created by Sachin on 04/03/24.
//


import SwiftUI
import SVGKit


struct RegistrationScreen: View {
    @State private var index = 0
    let options = ["English", "German", "France"]
    @State private var selectedOption = 0
    @State private var showingBottomSheet = false
    @State private var phoneNumber = ""
    @State private var isChecked = false
    var body: some View {
        NavigationView {
            VStack{
                
                Image("register").padding(.bottom,25)
                Text("Create new account")
                    .padding(.leading,-190)
                    .font(.system(size: 14))
                    .foregroundColor(Color(hex: 0x6C7A81))
                    .padding(.trailing, 20)
                    .padding(.leading, 10)
                    .padding(.top, 20)
                TextField("Phone number", text: $phoneNumber)
                    .padding()
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 10)
                HStack(){
                    Toggle(isOn: $isChecked) {
                        
                    }
                    .toggleStyle(AcceptTermsAndCondition())
                    .padding(.leading,20)
                   
                    Text("Accept")
                        .foregroundColor(Color(hex: 0x6C7A81))
                        .padding(.leading,8)
                    Text("terms and conditions")
                        .foregroundColor(Color(hex: 0xFF12A0))
                    
                }
                .onTapGesture {
                    
                    print("accoun tapp")
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.top,0)
                .padding(.leading,30)
                .padding(.bottom,20)
                
                Button(action: {
                           print("Register button tapped")
                           self.index = (self.index + 1) % 3 // Increment index to move to the next slide
                       }) {
                           Text("Register")
                               .padding()
                               .foregroundColor(Color(hex: 0x1D1D00))
                               .background(Color(hex: 0xFCF700))
                               .cornerRadius(25)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 25)
                                       .stroke(Color.black, lineWidth: 2)
                               )
                       }
                       .frame(width: 400) // Set the width to 400
                       .padding(.bottom, 20)
                
                HStack{
                    
                    Text("Already registered?  ")
                        .foregroundColor(Color(hex: 0x6C7A81))
                    Text("Login now")
                        .foregroundColor(Color(hex: 0xFF12A0))
                }.onTapGesture {
                    print("accoun tapp")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,20)
                .padding(.leading,90)
                LanguageSelector(options: ["English"])
            
            }
            .navigationBarItems(leading:
                                    HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(.pink)
                    .padding(.leading,30)
                    .padding(.trailing,30)
                    .frame(width: 30,height: 30)
                Text("Registration")
                    .font(.system(size: 24))
                
            }
                                
                .font(.system(size: 24))
            ) .padding(.bottom, 15)
            
            
        }.background(Color(hex: 0xFAFAFA))
        
        
    }
    
}


struct AcceptTermsAndCondition: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            
            HStack {
                
                if configuration.isOn {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(width: 24, height: 24)
                    
                } else {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.pink, lineWidth: 1)
                        .frame(width: 24, height: 24)
                        .overlay(
                            Image(systemName: "checkmark")
                                .foregroundColor(Color.pink)
                                .frame(width: 20, height: 20)
                        )
                }
                configuration.label
            }
        }
    }
}



#Preview {
    RegistrationScreen()
}



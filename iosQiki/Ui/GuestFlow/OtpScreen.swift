//
//  OtpScreen.swift
//  iosQiki
//
//  Created by Sachin on 07/03/24.
//



import SwiftUI
import SVGKit


struct OtpScreen: View {
    @State private var index = 0
    let options = ["English", "German", "France"]
    @State private var selectedOption = 0
    @State private var showingBottomSheet = false
    @State private var phoneNumber = ""
    @State private var isChecked = false
    @State private var otpCode = ""
    var body: some View {
        NavigationView {
            VStack{
                Image("otp").padding(.bottom,25)
                Text("Enter verification code")
                    .padding(.leading, 30)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                HStack{
                    Text("Enter OTP sent to +41 984 984 9845")
                    Image("edit")
                }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .font(.system(size: 14))
                    .foregroundColor(Color(hex: 0x6C7A81))
                    .padding(.trailing, 20)
                    .padding(.leading, 30)
                    .padding(.top, 5)
                
                
                TextField("Enter OTP", text: $otpCode)
                                    .padding()
                                    .keyboardType(.numberPad)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.top, 10)
                                    .frame(maxWidth: .infinity,alignment: .leading)
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .padding(.bottom,20)
                
                
                
                HStack{
                    
                    Text("Time remaining 2:00s  ")
                        .foregroundColor(Color(hex: 0x6C7A81))
                    Spacer()
                    Text("Resend")
                        .foregroundColor(Color(hex: 0xFF12A0))
                }.onTapGesture {
                    print("accoun tapp")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,20)
                .padding(.leading,20)
                .padding(.trailing,20)
                Button(action: {
                           print("Verify button tapped")
                           self.index = (self.index + 1) % 3 // Increment index to move to the next slide
                       }) {
                           Text("Verify")
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
               
            
            }
            .navigationBarItems(leading:
                                    HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(.pink)
                    .padding(.leading,30)
                    .padding(.trailing,30)
                    .frame(width: 30,height: 30)
               
                
            }
                                
                .font(.system(size: 24))
            ) .padding(.bottom, 15)
            
            
        }.background(Color(hex: 0xFAFAFA))
        
        
    }
    
}



#Preview {
    OtpScreen()
}



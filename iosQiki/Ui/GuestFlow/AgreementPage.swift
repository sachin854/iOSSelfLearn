//
//  AgreementPage.swift
//  iosQiki
//
//  Created by Sachin on 07/03/24.
//

import SwiftUI

struct AgreementPage: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Terms and conditions")
                        .padding(.leading,20)
                        .padding(.top,20)
                    
                    Spacer()
                }
                List{
                    Text("The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database. The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database.The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database. The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database.The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database. The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database.The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database. The new entertainment world of QiKi implements various security measures to make the shopping experience as safe as it is enjoyable for all its members. QiKi uses your credit card information only when processing the order and never stores it as stored in the database.")
                }
                HStack{
                    Button(action: {
                        print("Register button tapped")
                        
                    }) {
                        Text("Decline ")
                            .padding()
                            .foregroundColor(Color(hex: 0x1D1D00))
                            .background(Color.white)
                            .cornerRadius(25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                    
                    .padding(.bottom, 20)
                    Spacer()
                    Button(action: {
                        print("Register button tapped")
                        
                    }) {
                        Text("Accept & continue ")
                            .padding()
                            .foregroundColor(Color(hex: 0x1D1D00))
                            .background(Color(hex: 0xFCF700))
                            .cornerRadius(25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                    
                    .padding(.bottom, 20)
                    
                }
                .padding(.top, 20)
                .padding(.leading,20)
                .padding(.trailing,20)
                
                
                
                
            }
            .navigationBarItems(leading:
                                    HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(.pink)
                    .padding(.leading,30)
                    .padding(.trailing,30)
                    .frame(width: 20,height: 20)
                Text("Agreement")
                    .font(.system(size: 24))
                
            }
                                
                .font(.system(size: 24))
            ) .padding(.bottom, 15)
            
            
        }.background(Color(hex: 0xFAFAFA))
        
    }
}

#Preview {
    AgreementPage()
}

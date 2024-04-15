import SwiftUI
import SVGKit


struct CreateAccount: View {
    @State private var index = 0
    let options = ["English", "German", "France"]
    @State private var selectedOption = 0
    @State private var showingBottomSheet = false
    var body: some View {
        NavigationView {
            VStack{
                
                AccountType(imageName: "personal", title:"Personal account", description: "For socializing, shopping, and brand new experiences").onTapGesture {
                    print("personal tapp")
                }
                
                AccountType(imageName: "business", title:"Business account", description: "For the sale of clothing, personal care, electronic goods, etc.").onTapGesture {
                    print("business tapp")
                }
                
                
                Button(action: {
                    print("Create button tapped")
                    self.index = (self.index + 1) % 3 // Increment index to move to the next slide
                }) {
                    Text("Create account")
                        .padding()
                        .foregroundColor(Color(hex: 0x1D1D00))
                        .background(Color(hex: 0xFCF700))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }.padding(.bottom,20)
                
                HStack{
                    Text("Have an account? ")
                        .foregroundColor(Color(hex: 0x6C7A81))
                    Text("Log in")
                        .foregroundColor(Color(hex: 0xFF12A0))
                }.onTapGesture {
                    print("accoun tapp")
                }
                .padding(.bottom,20)
                
                LanguageSelector(options: ["English"])
            }
            .navigationBarItems(leading:
                                    Text("Create Account")
                .padding(.leading,10)
                .font(.system(size: 24))
                                
            )
            
            
            .background(Color(hex: 0xFAFAFA))
        }
        
    }
}



struct AccountType: View {
    let imageName: String
    let title: String
    let description: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.15), radius: 15, x: 10, y: 10)
            Image(imageName)
        }
        .frame(width: .infinity, height: 240)
        .padding(.trailing, 30)
        .padding(.leading, 30)
        .background(Color(hex: 0xFAFAFA))
        .padding(.bottom, 15)
    }
}


#Preview {
    CreateAccount()
}


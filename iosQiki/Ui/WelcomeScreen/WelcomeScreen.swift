import SwiftUI

struct WelcomeIntroScreen: View {
    @State private var index = 0
    @State private var isShowingLoginScreen = false
    var body: some View {
        NavigationView {
            VStack{
                TabView(selection: $index) {
                    ForEach(0..<3, id: \.self) { index in
                        CardView()
                            .tag(index)
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .onReceive([index].publisher.first()) { value in
                    self.index = value
                }
                
                HStack(spacing: 0) {
                    Spacer()
                    ForEach(0..<3, id: \.self) { index in
                        Circle()
                            .fill(index == self.index ? Color.purple : Color.purple.opacity(0.5))
                            .frame(width: 12, height: 12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 2)
                            ).padding(7)
                    }
                    Spacer()
                }
                .padding()
                Text("Qik Lounge")
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(4)
                
                
                Text("A new places, new memories and fun. Start trying out the 56 Locations on QiKi.")
                    .fontWeight(.thin)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .padding(4)
                
                
                
                HStack(spacing: 20) {
                    Button(action: {
                        print("Skip button tapped")
                        self.isShowingLoginScreen = true
                    }) {
                        Text("Skip to Login")
                            .padding()
                            .foregroundColor(Color(hex: 0xFF12A0))
                            .background(Color.white)
                            .cornerRadius(25)
                    }
                    .padding(.horizontal, 30)
                    NavigationLink(destination: LoginScreen(), isActive: $isShowingLoginScreen) {
                        EmptyView()
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("Next button tapped")
                        self.index = (self.index + 1) % 3 // Increment index to move to the next slide
                    }) {
                        Text("Next")
                            .padding()
                            .foregroundColor(Color(hex: 0x1D1D00))
                            .background(Color(hex: 0xFCF700))
                            .cornerRadius(25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                    .padding(.horizontal, 30)
                    
                }
            }
            .statusBar(hidden: true)
        }
    }
}


struct CardView: View {
    var body: some View {
        Image("secImg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}


#Preview {
    WelcomeIntroScreen()
}



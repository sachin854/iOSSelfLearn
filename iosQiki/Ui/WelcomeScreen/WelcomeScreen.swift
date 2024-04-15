import SwiftUI

struct WelcomeIntroScreen: View {
    @State private var index = 0
    var body: some View {
        VStack{
            TabView(selection: $index) {
                ForEach((0..<3), id: \.self) { index in
                    CardView()
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack(spacing: 0) {
                Spacer()
                ForEach((0..<3), id: \.self) { index in
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
                .padding()
            Text("A new places, new memories and fun. Start trying out the 56 Locations on QiKi.")
                .fontWeight(.thin)
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .padding()
                
                
            
            HStack(spacing: 20) {
                Button(action: {
                    print("Text button tapped")
                }) {
                    Text("Skip to Login")
                        .padding()
                        .foregroundColor(Color(hex: 0xFF12A0))
                        .background(Color.white)
                        .cornerRadius(25)
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                Button(action: {
                    print("Text button tapped")
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
    }
}

extension Color {
    
    init(hex: UInt32, alpha: Double = 1) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}

struct CardView: View{
    var body: some View{
        Image("secImg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        Image("secImg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        Image("secImg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct WelcomeIntroScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeIntroScreen()
    }
}

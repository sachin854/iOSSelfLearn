import SwiftUI
import Lottie

struct SplashScreen: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                LottieView(animation: .named("splash-light.json"))
                    .playing(loopMode: .loop)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.isActive = true
                }
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $isActive) {
                WelcomeIntroScreen()
            }
        }
    }
}


#Preview {
    SplashScreen()
}


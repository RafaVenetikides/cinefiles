import SwiftUI

struct ContentView: View {
    @State private var crrPage : Page = .onboarding
    
    var body: some View {
        Group {
            switch crrPage {
            case .home :
                Text("Home")
            case .onboarding:
                OnBoardingView(crrPage: $crrPage)
            }
        }
        
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct ContentView: View {
    @State private var crrPage : Page = .onboarding
    
    var body: some View {
        VStack {
            Group {
                switch crrPage {
                case .tabs :
                    AppTabsView()
                case .onboarding:
                    OnBoardingView(crrPage: $crrPage)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct ContentView: View {
    @State private var showOnboarding = true
    
    var body: some View {
        if showOnboarding{
            OnBoardingView(showOnboarding: $showOnboarding)
        } else {
            AppTabsView()
        }
    }
}

#Preview {
    ContentView()
}

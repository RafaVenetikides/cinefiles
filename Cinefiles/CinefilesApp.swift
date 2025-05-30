import SwiftUI

@main
struct CinefilesApp: App {
    
    init() {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = .customDarkBlue

            UITabBar.appearance().standardAppearance = tabBarAppearance
            
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

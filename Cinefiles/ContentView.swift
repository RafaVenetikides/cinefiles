import SwiftUI

struct ContentView: View {
    @State private var crrPage : Page = .login
    
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
//            Group {
//                switch crrPage {
//                case .home :
//                    Text("Home")
//                case .onboarding:
//                    OnBoardingView(crrPage: $crrPage)
//                case .login:
//                    LoginView(crrPage: $crrPage)
//                case .perfil:
//                    VStack {
//                        Text("PERFIL\n🐴")
//                            .font(.system(size: 34, weight: .semibold))
//                            .foregroundStyle(.white)
//                            .multilineTextAlignment(.center)
//                    }
//                    .frame(
//                        maxWidth: .infinity,
//                        maxHeight: .infinity
//                    )
//                    .background(.customDarkBlue)
//                }
//            }
        }
    }
}

#Preview {
    ContentView()
}

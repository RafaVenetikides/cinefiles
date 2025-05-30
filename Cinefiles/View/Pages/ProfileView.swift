import SwiftUI

struct ProfileView : View{
    @State private var crrProfilePage : profilePage = .login
    
    var body : some View {
        VStack {
            switch crrProfilePage {
                case .login:
                LoginView(crrProfilePage: $crrProfilePage)
                case .register:
                RegisterView(crrProfilePage:$crrProfilePage)
                case .profile:
                    Text("PERFIL\n🐴")
                    .font(.system(size: 34, weight: .semibold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                    .background(.customDarkBlue)
            }
        }
    }
}

#Preview {
    ProfileView()
}

import SwiftUI

struct LoginView : View {
    @Binding var crrPage : Page
    @State private var showAlert = false
    
    var body : some View {
        VStack(spacing: 36) {
            Image("cineFiles_claro")
                .resizable()
                .frame(width: 237, height: 148)
                .padding(.top, 60)
            
            VStack(alignment: .leading, spacing: 16) {
                CustomInputView(
                    inputTitle: "Email",
                    placeholder: "AdamSandler@ator.com"
                )
                CustomInputView(
                    inputTitle: "Senha",
                    placeholder: "AdamSandler@ator.com",
                    isPassword: true
                )
                Button {
                    showAlert.toggle()
                } label: {
                    Text("Esqueci minha senha")
                        .font(.system(size: 11, weight: .medium))
                        .underline()
                        .foregroundColor(.customPink)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Aviso"),
                        message:
                            Text("Te enviamos um email para você recuperar sua senha"),
                        dismissButton: .default(Text("OK")))
                }
            }
            
            VStack(spacing: 16) {
                CustomButtonView(
                    crrPage: $crrPage,
                    text: "Entrar",
                    color: .customPink,
                    destinationView: .tabs
                )
                
                Rectangle()
                    .fill(Color(.systemGray))
                    .frame(width: 300, height: 0.5)
                
                CustomButtonView(
                    crrPage: $crrPage,
                    text: "Entrar com Apple",
                    color: .white,
                    destinationView: .tabs,
                    icon: "apple.logo"
                )
                
                Button {
                    showAlert.toggle()
                } label: {
                    Text("Não tenho cadastro")
                        .font(.system(size: 16, weight: .semibold))
                        .underline()
                        .foregroundColor(.customPink)
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .padding(40)
        .background(.customDarkBlue)
    }
}

#Preview {
    LoginView(
        crrPage: .constant(.tabs)
    )
}

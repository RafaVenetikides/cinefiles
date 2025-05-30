import SwiftUI

struct LoginView : View {
    @Binding var crrProfilePage : profilePage
    @State private var showAlert = false
    
    var pageColor : Color = .customPink
    
    var body : some View {
        VStack(spacing: 36) {
            Image("cineFiles_claro")
                .resizable()
                .frame(width: 237, height: 148)
                .padding(.top, 60)
            
            VStack(alignment: .leading, spacing: 16) {
                CustomInputView(
                    inputTitle: "Email",
                    inputTitleColor: pageColor,
                    placeholder: "AdamSandler@ator.com"
                )
                CustomInputView(
                    inputTitle: "Senha",
                    inputTitleColor: pageColor,
                    placeholder: "Não posso passar a minha",
                    isPassword: true
                )
                Button {
                    showAlert.toggle()
                } label: {
                    Text("Esqueci minha senha")
                        .font(.system(size: 11, weight: .medium))
                        .underline()
                        .foregroundColor(pageColor)
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
                    text: "Entrar",
                    color: pageColor,
                    function: {
                        crrProfilePage = .profile
                    }
                )
                
                Rectangle()
                    .fill(Color(.systemGray))
                    .frame(width: 300, height: 0.5)
                
                CustomButtonView(
                    text: "Entrar com Apple",
                    color: .white,
                    icon: "apple.logo",
                    function: {
                        crrProfilePage = .profile
                    }
                )
                
                Button {
                    crrProfilePage = .register
                } label: {
                    Text("Não tenho cadastro")
                        .font(.system(size: 16, weight: .semibold))
                        .underline()
                        .foregroundColor(pageColor)
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .padding(40)
        .offset(y: -40)
        .background(.customDarkBlue)
    }
}

#Preview {
    LoginView(crrProfilePage: .constant(.login))
}

import SwiftUI

extension View {
    func inputStyle() -> some View {
        self
            .font(.system(size: 12, weight: .semibold))
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled(true)
            .padding()
            .foregroundStyle(.black)
            .background(.white)
            .cornerRadius(10)
    }
}

struct CustomInputView: View {
    @State var crrText = ""
    
    var inputTitle : String = ""
    var inputTitleColor : Color = .customPink
    var placeholder : String
    var isPassword : Bool = false
    
    var body: some View {
        if isPassword {
            VStack(alignment: .leading) {
                Text(inputTitle)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(inputTitleColor)
                SecureField(
                    "",
                    text: $crrText,
                    prompt: Text(placeholder).foregroundColor(.gray)
                )
                .inputStyle()
            }
        } else {
            VStack(alignment: .leading) {
                Text(inputTitle)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(inputTitleColor)
                TextField(
                    "",
                    text: $crrText,
                    prompt: Text(placeholder).foregroundColor(.gray)
                )
                .inputStyle()
            }
        }
    }
}

#Preview {
    CustomInputView(
        inputTitle: "Senha",
        placeholder: "Muita senha foda"
    )
    .preferredColorScheme(.dark)
}

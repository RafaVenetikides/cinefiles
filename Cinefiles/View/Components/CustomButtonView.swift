import SwiftUI

struct CustomButtonView : View {
    var text : String
    var color : Color
    var icon : String = ""
    var function : () -> Void = {}

    var body : some View {
        Button {
            function()
        } label: {
            HStack{
                if icon != "" {
                    Image(systemName: icon)
                        .foregroundStyle(.black)
                }
                Text(text)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.black)
            }
            .frame(height: 35)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 12)
            .background(color)
            .cornerRadius(12)
        }
    }
}

#Preview {
    CustomButtonView(
        text: "Botão",
        color: .customPink
    )
}

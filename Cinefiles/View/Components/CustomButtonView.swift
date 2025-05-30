import SwiftUI

struct CustomButtonView : View {
    @Binding var crrPage : Page

    var text : String
    var color : Color
    var destinationView : Page
    var icon : String = ""

    var body : some View {
        Button {
            crrPage = destinationView
        } label: {
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

#Preview {
    CustomButtonView(
        crrPage: .constant(.onboarding),
        text: "Botão",
        color: .customPink,
        destinationView: .home
    )
}

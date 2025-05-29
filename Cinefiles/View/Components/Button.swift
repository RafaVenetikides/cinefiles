import SwiftUI

struct Button : View {
    var text : String
    var color : Color
    
    var body : some View {
        VStack {
            Text(text)
                .font(.system(size: 18, weight: .semibold))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(color)
        .cornerRadius(12)
    }
}

#Preview {
    Button(text: "Botão", color: .blue)
}

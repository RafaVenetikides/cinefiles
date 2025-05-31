import SwiftUI

extension Double {
    var clean: String {
        self.truncatingRemainder(dividingBy: 1) == 0
        ? String(format: "%.0f", self)
        : String(format: "%.1f", self)
    }
}

struct RankingView : View {
    var ranking : RankingModel
    
    var body : some View {
        VStack {
            Image(ranking.websiteImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 32)
                .cornerRadius(4)
            HStack {
                Text("\(ranking.ranking.clean) / 5")
                Image(systemName: "star.fill")
            }
            .font(.system(size: 16, weight: .semibold))
            .foregroundStyle(.customYellow)
        }
        .frame(height: 85, alignment: .center)
    }
}

#Preview {
    RankingView(
        ranking: RankingModel(
            websiteImage: "imdb",
            ranking: 3
        )
    )
}

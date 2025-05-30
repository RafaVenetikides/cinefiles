import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
            
        }
    }
}

#Preview {
    HomeView()
}

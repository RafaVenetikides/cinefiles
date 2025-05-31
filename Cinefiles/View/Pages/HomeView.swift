import SwiftUI

struct HomeView: View {
    
    // Exemplo de como usar o singleton
    // Pra pegar os filmes ai é só fazer moviesData.movies
    @StateObject var moviesData = MovieData.shared
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 25){
                    ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
                    HMovieListView(sectionName: "Favoritos da Edna", color: .customPink)
                    HMovieListView(sectionName: "Filmes FODÕES", color: .customGreen)
                    HMovieListView(sectionName: "Animações", color: .customPink)
                }
            }
            .background(Color(.customDarkBlue))
        }
        .tint(.customGreen)
    }
}

#Preview {
    HomeView()
}



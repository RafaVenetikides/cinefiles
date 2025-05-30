import SwiftUI

struct HomeView: View {
    
    // Exemplo que como usar o singleton
    // Pra pegar os filmes ai é só fazer moviesData.movies
    @StateObject var moviesData = MovieData.shared
    
    var body: some View {
        ScrollView{
            VStack(spacing: 25){
                ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
                HMovieListView(sectionName: "Favoritos da Edna", movies: [], color: .customPink)
                HMovieListView(sectionName: "Filmes FODÕES", movies: [], color: .customGreen)
                HMovieListView(sectionName: "Animações", movies: [], color: .customPink)
            }
        }
    }
}

#Preview {
    HomeView()
}



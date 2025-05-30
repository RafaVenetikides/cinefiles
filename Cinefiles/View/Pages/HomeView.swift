import SwiftUI

struct HomeView: View {
    
    // Exemplo que como usar o singleton
    // Pra pegar os filmes ai é só fazer moviesData.movies
    @StateObject var moviesData = MovieData.shared
    
    var body: some View {
        ScrollView{
            VStack(spacing: 25){
                ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
                HMovieListView(sectionName: "Favoritos da Edna", movies: moviesData.movies, color: .customPink)
                HMovieListView(sectionName: "Filmes FODÕES", movies: moviesData.movies, color: .customGreen)
                HMovieListView(sectionName: "Animações", movies: moviesData.movies, color: .customPink)
            }
        }
    }
}

#Preview {
    HomeView()
}



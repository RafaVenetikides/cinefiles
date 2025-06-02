import SwiftUI

struct HomeView: View {
    
    // Exemplo de como usar o singleton
    // Pra pegar os filmes ai é só fazer moviesData.movies
    @StateObject var moviesData = MovieData.shared
    
    private var allMovies: [Binding<MovieModel>] {
            moviesData.movies.indices.map { idx in
                $moviesData.movies[idx]
            }
        }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 25){
                    ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
                    HMovieListView(sectionName: "Favoritos da Edna", color: .customPink, movies: allMovies)
                    HMovieListView(sectionName: "Filmes FODÕES", color: .customGreen, movies: allMovies)
                    HMovieListView(sectionName: "Animações", color: .customPink, movies: allMovies)
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



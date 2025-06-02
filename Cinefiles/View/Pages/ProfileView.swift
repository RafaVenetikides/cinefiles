import SwiftUI

struct ProfileView : View{
    @State private var crrProfilePage : profilePage = .login
    @StateObject private var moviesData = MovieData.shared
    
    private var favoriteMovies: [Binding<MovieModel>] {
        let allMovies = moviesData.movies
        return allMovies.enumerated().compactMap { index, movie in
            guard movie.is_favorite else { return nil }
            return $moviesData.movies[index]
        }
    }
    
    private var watchedMovies: [Binding<MovieModel>] {
        let allMovies = moviesData.movies
        return allMovies.enumerated().compactMap { index, movie in
            guard movie.watched else { return nil }
            return $moviesData.movies[index]
        }
    }
    
    var body : some View {
        VStack {
            switch crrProfilePage {
            case .login:
                LoginView(crrProfilePage: $crrProfilePage)
            case .register:
                RegisterView(crrProfilePage:$crrProfilePage)
            case .profile:
                UserView(movies: $moviesData.movies)
            }
        }
    }
}

#Preview {
    ProfileView()
}

//
//  UserView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 01/06/25.
//
import SwiftUI

struct UserView: View{
    @Binding var movies: [MovieModel]
    
    private var favoriteMovies: [Binding<MovieModel>] {
        let allMovies = movies
        return allMovies.enumerated().compactMap { index, movie in
            guard movie.is_favorite else { return nil }
            return $movies[index]
        }
    }
    
    private var watchedMovies: [Binding<MovieModel>] {
        let allMovies = movies
        return allMovies.enumerated().compactMap { index, movie in
            guard movie.watched else { return nil }
            return $movies[index]
        }
    }
    
    var body: some View{
        
        NavigationStack {
            ZStack {
                Color.customDarkBlue.ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundStyle(.customDarkBlue)
                            .font(.system(size: 70))
                            .padding(20)
                            .background{
                                RoundedRectangle(cornerRadius: 100)
                                    .foregroundStyle(.customGreen)
                            }
                            .padding(.trailing, 10)
                        VStack (alignment: .leading){
                            Text("John Doe")
                                .foregroundStyle(.white)
                                .font(.system(size: 36))
                                .bold()
                            
                            Text("Filmes Favoritos: \(favoriteMovies.count)")
                                .foregroundStyle(.white)
                            
                            Text("Filmes Assistidos: \(watchedMovies.count)")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(.vertical, 40)
                    
                    HMovieListView(sectionName: "Filmes Favoritos", color: .customPink, movies: favoriteMovies)
                    HMovieListView(sectionName: "Filmes Assistidos", color: .customGreen, movies: watchedMovies)
                }
            }
        }
        .tint(.customGreen)
    }
}

//
//  HMovieListView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//
import SwiftUI

struct HMovieListView: View {
    var sectionName: String
    var color: Color
    
    var movies: [Binding<MovieModel>]
    
    var body: some View {
        VStack (alignment: .leading){
            Text(sectionName)
                .foregroundStyle(.customDarkBlue)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .fontWeight(.semibold)
                .background(
                    RoundedRectangle(cornerRadius: 100)
                        .foregroundStyle(color)
                )
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(movies){ $movie in
                        NavigationLink{
                            MovieView(movie: $movie)
                        }
                        label: {
                            MovieCellView(movie: $movie)
                                .contextMenu {
                                    Button {
                                        movie.watched.toggle()
                                    } label: {
                                        Label(movie.watched ? "assistido" : "não assistido", systemImage: movie.watched ? "eye.fill" : "eye")
                                    }
                                    Button {
                                        movie.is_favorite.toggle()
                                    } label: {
                                        Label(movie.is_favorite ? "favorito" : "não favorito", systemImage: movie.is_favorite ? "star.fill" : "star")
                                    }
                                }
                        }
                        
                    }
                }
                
            }
            .frame(height: 150)
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 16)
    }
}

#Preview{
    HMovieListView(sectionName: "Favoritos da Edna", color: .customGreen, movies:[])
}


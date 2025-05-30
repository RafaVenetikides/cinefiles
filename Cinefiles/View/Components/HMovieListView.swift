//
//  HMovieListView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//
import SwiftUI

struct HMovieListView: View {
    var sectionName: String
    var movies: [MovieModel]
    var color: Color
    
    @StateObject var moviesData = MovieData.shared
    
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
                    ForEach(movies){ movie in
                        NavigationLink{
                            MovieView(movie: movie)
                        }
                        label: {
                            MovieCellView(movie: movie)
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
    HMovieListView(sectionName: "Favoritos da Edna", movies: MovieData.shared.movies, color: .customGreen)
}


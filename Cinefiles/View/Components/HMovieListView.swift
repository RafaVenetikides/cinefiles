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
                        Image(movie.cover)
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottom, endPoint: .center)
                                VStack{
                                    Spacer()
                                    HStack(spacing: 15){
                                        if movie.is_favorite {
                                            Image(systemName: "star.fill")
                                                .foregroundStyle(.white)
                                        }
                                        if movie.watched {
                                            Image(systemName: "eye.fill")
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    .padding(.bottom, 10)
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
    HMovieListView(sectionName: "Favoritos da Edna", movies: MovieData.shared.movies, color: .customGreen)
}

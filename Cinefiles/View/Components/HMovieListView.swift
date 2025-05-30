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
    
    var body: some View {
        VStack (alignment: .leading){
            Text(sectionName)
                .foregroundStyle(.customDarkBlue)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .fontWeight(.semibold)
                .background(
                    RoundedRectangle(cornerRadius: 100)
                        .foregroundStyle(.customPink)
                )
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(movies){ movie in
                        Image(movie.cover)
                            .resizable()
                            .scaledToFit()
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
    HMovieListView(sectionName: "Favoritos da Edna", movies: [MovieModel(title: "Teste", year: 2000, length: 10, cover: "filme1", directors: ["Teste"], script: ["Teste"], classification: .L)])
}

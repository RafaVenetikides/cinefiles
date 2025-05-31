//
//  MovieCellView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//
import SwiftUI

struct MovieCellView: View {
    @Binding var movie: MovieModel
    
    var body: some View {
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

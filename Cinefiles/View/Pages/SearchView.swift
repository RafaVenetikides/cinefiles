//
//  SearchView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @StateObject var moviesData = MovieData.shared
    
    var filteredMovies: [MovieModel] {
            if searchText.isEmpty {
                return moviesData.movies
            } else {
                return moviesData.movies.filter { movie in
                    movie.title.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Buscar Filme", text: $searchText)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .tint(.customGreen)
                        .foregroundStyle(.black)
                }
                .padding(10)
                .background(.white)
                .cornerRadius(8)
                .padding()
                
                ScrollView{
                    
                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 24), GridItem(.flexible())], spacing: 24) {
                        ForEach(filteredMovies){ movie in
                            NavigationLink {
                                MovieView(movie: movie)
                            } label: {
                                MovieCellView(movie: movie)
                                    .cornerRadius(15)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.customDarkBlue)
        }
        .tint(.customGreen)
    }
}


#Preview {
    SearchView()
}

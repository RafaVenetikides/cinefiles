import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @StateObject var moviesData = MovieData.shared
    
    // Acho que pode remover isso aqui, precisei referenciar o foreach diferente pra funcionar
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
                        ForEach($moviesData.movies){ $movie in
                            if searchText.isEmpty || movie.title.localizedCaseInsensitiveContains(searchText) {
                                NavigationLink {
                                    MovieView(movie: $movie)
                                } label: {
                                    MovieCellView(movie: $movie)
                                        .cornerRadius(15)
                                }
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

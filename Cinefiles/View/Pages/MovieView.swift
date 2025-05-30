import SwiftUI

struct MovieView : View {
    var movie : MovieModel
    
    var body : some View {
        VStack(alignment: .leading, spacing: 24) {
            YouTubeView(videoId: movie.trailerId)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 230
                )
            
            HStack() {
                Image(movie.poster)
                    .resizable()
                    .frame(width: 100, height: 150)
                VStack(alignment: .leading, spacing: 14) {
                    Text(movie.title)
                        .font(.system(size: 20, weight: .semibold))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(.customPink)
                        .cornerRadius(24)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            let formatted = "\(movie.length / 60)h \(movie.length % 60)min"
                            Text("\(movie.year) · \(formatted) ·")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            Image(movie.classification.rawValue)
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                        VStack(alignment: .leading) {
                            Text("Direção: \(movie.directors.joined(separator: ", "))")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            Text("Escrita: \(movie.script.joined(separator: ", "))")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.leading, 8)
                }
            }
            .padding(.leading)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Sinopse")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.customGreen)
                    .cornerRadius(24)
                
                Text(movie.synopsis)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 8)
            }
            .padding(.leading)
            
            Spacer()
        }
        .background(.customDarkBlue)
    }
}

#Preview {
    MovieView(
        movie: MovieModel(
            poster: "filme8",
            title: "Gigantes de Aço",
            year: "2011",
            length: 127,
            directors: ["Shawn Levy"],
            script: ["Dan Gilroy", "Les Bohem"],
            synopsis: "Em um futuro próximo, as máquinas substituem os homens no ringue. As lutas de boxe acontecem entre robôs de alta tecnologia. Charlie, um ex-lutador frustrado, decide se juntar ao filho para construir um competidor imbatível.",
            classification: .TEN,
            trailerId: "B33mhvSDO3c")
    )
}


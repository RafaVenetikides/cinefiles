import SwiftUI

struct MovieView : View {
    @Binding var movie : MovieModel
    
    var body : some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24) {
                YouTubeView(videoId: movie.trailerId)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 230
                    )
                
                HStack(spacing: 12) {
                    Image(movie.cover)
                        .resizable()
                        .frame(width: 100, height: 150)
                    VStack(alignment: .leading, spacing: 14) {
                        Text(movie.title)
                            .foregroundStyle(.customDarkBlue)
                            .font(.system(size: 20, weight: .semibold))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
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
                        .foregroundStyle(.customDarkBlue)
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
                
                VStack(alignment: .leading) {
                    Text("Notas")
                        .foregroundStyle(.customDarkBlue)
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.customGreen)
                        .cornerRadius(24)
                    HStack {
                        Spacer()
                        ForEach(Array(movie.rankings.enumerated()), id: \.element.id) { index, ranking in
                            RankingView(ranking: ranking)
                            Spacer()
                            if index != movie.rankings.count - 1 {
                                Rectangle()
                                    .fill(Color(.systemGray))
                                    .frame(width: 0.5, height: 80)
                                Spacer()
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal, 16)
                
                Spacer()
                
            }
            .offset(y: 10)
            .background(.customDarkBlue)
            
            HStack(spacing: 16) {
                Spacer()
                Button {
                    movie.watched.toggle()
                } label: {
                    Image(systemName: movie.watched ? "eye.fill" : "eye.slash.fill")
                        .font(.system(size: 28, weight: .semibold))
                        .frame(width: 50, height: 50)
                        .padding(8)
                        .foregroundStyle(.white)
                        .background(.customBlue)
                        .cornerRadius(100)
                }
                Button {
                    movie.is_favorite.toggle()
                } label: {
                    Image(systemName: movie.is_favorite ? "star.fill" : "star")
                        .font(.system(size: 28, weight: .semibold))
                        .frame(width: 50, height: 50)
                        .padding(8)
                        .foregroundStyle(.white)
                        .background(.customBlue)
                        .cornerRadius(100)
                }
            }
            .offset(y: -30)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .background(.customDarkBlue)
        }
    }
}

#Preview {
    MovieView(
        movie:
        .constant(
            MovieModel(
                title: "Tudo em Todo o Lugar ao Mesmo Tempo",
                year: "2011",
                length: 127,
                cover: "filme8",
                directors: ["Shawn Levy"],
                script: ["Dan Gilroy", "Les Bohem"],
                synopsis: "Em um futuro próximo, as máquinas substituem os homens no ringue. As lutas de boxe acontecem entre robôs de alta tecnologia. Charlie, um ex-lutador frustrado, decide se juntar ao filho para construir um competidor imbatível.",
                classification: .TEN,
                trailerId: "B33mhvSDO3c",
                rankings: [
                    RankingModel(websiteImage: "imdb", ranking: 3),
                    RankingModel(websiteImage: "metacritic", ranking: 4.5),
                    RankingModel(websiteImage: "rotten", ranking: 4)
                ]
            )
        )
    )
}


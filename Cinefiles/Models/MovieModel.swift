import Foundation

class MovieData: ObservableObject {
    static let shared = MovieData()
    
    @Published var movies: [MovieModel] = .sample()
    
    private init() {}
}

struct MovieModel: Identifiable {
    let id = UUID()
    
    var title: String
    var year: String
    var length: Int
    var cover: String
    var directors: [String]
    var script: [String]
    var synopsis: String
    var classification: classification
    var trailerId: String
}

enum classification : String {
    case L = "L"
    case TEN = "TEN"
    case TWELVE = "TWELVE"
    case FOURTEEN = "FOURTEEN"
    case SIXTEEN = "SIXTEEN"
    case EIGHTEEN = "EIGHTEEN"
}

extension Array where Element == MovieModel{
    static func sample() -> [MovieModel] {
        return [
            MovieModel(
                title: "Tudo em Todo o Lugar ao Mesmo Tempo",
                year: "2022",
                length: 139,
                cover: "filme1.jpg",
                directors: ["Daniel Kwan", "Daniel Scheinert"],
                script: ["Daniel Kwan", "Daniel Scheinert"],
                classification: .SIXTEEN
            ),
            MovieModel(
                title: "Cisne Negro",
                year: "2010",
                length: 108,
                cover: "filme2.jpg",
                directors: ["Darren Aronofsky"],
                script: ["Mark Heyman", "Andres Heinz", "John J. McLaughlin"],
                classification: .FOURTEEN
            ),
            MovieModel(
                title: "Barbie a princesa e a plebeia",
                year: "2004",
                length: 85,
                cover: "filme3.jpg",
                directors: ["William Lau"],
                script: ["Cliff Ruby", "Elana Lesser", "Ruth Handler"],
                classification: .L
            ),
            MovieModel(
                title: "Show de Truman",
                year: "1998",
                length: 103,
                cover: "filme4.jpg",
                directors: ["Peter Weir"],
                script: ["Peter Weir", "Andrew Niccol"],
                classification: .TWELVE
            ),
            MovieModel(
                title: "Spirit: O Corcel Indomável",
                year: "2002",
                length: 83,
                cover: "filme5.jpg",
                directors: ["Kelly Asbury", "Lorna Cook"],
                script: ["John Fusco"],
                classification: .L
            ),
            MovieModel(
                title: "Labirinto do Fauno",
                year: "2006",
                length: 119,
                cover: "filme6.jpg",
                directors: ["Guillermo del Toro"],
                script: ["Guillermo del Toro"],
                classification: .SIXTEEN
            ),
            MovieModel(
                title: "O Predestinado",
                year: "2015",
                length: 97,
                cover: "filme7.jpg",
                directors: ["Michael Spierig", "Peter Spierig"],
                script: ["Michael Spierig", "Peter Spierig", "Robert A Heinlein"],
                classification: .SIXTEEN
            ),
            MovieModel(
                title: "Gigantes de Aço",
                year: "2011",
                length: 127,
                cover: "filme8.jpg",
                directors: ["Shawn Levy"],
                script: ["Dan Gilroy", "Les Bohem", "Jeremy Leven", "John Gatins", "Richard Matheson"],
                classification: .TEN
            ),
            MovieModel(
                title: "A Vastidão da Noite",
                year: "2019",
                length: 89,
                cover: "filme9.jpg",
                directors: ["Andrew Patterson"],
                script: ["James Montague", "Craig W. Sanger"],
                classification: .TWELVE
            ),
            MovieModel(
                title: "Parasita",
                year: "2019",
                length: 132,
                cover: "filme10.jpg",
                directors: ["Bong Joon-ho"],
                script: ["Bong Joon-ho", "Jin Won Han"],
                classification: .SIXTEEN
            ),
            MovieModel(
                title: "Passivonas",
                year: "2023",
                length: 91,
                cover: "filme11.jpg",
                directors: ["Emma Seligman"],
                script: ["Emma Seligman", "Rachel Sennott"],
                classification: .FOURTEEN
            ),
            MovieModel(
                title: "Turma da Mônica: Uma Aventura no Tempo",
                year: "2007",
                length: 80,
                cover: "filme12.jpg",
                directors: ["Mauricio de Sousa"],
                script: ["Mauricio de Sousa", "Flávio de Souza", "Didi Oliveira", "Emerson Bernardo de Abreu"],
                classification: .L
            ),
            MovieModel(
                title: "Amnésia (Memento)",
                year: "2001",
                length: 113,
                cover: "filme13.jpg",
                directors: ["Christopher Nolan"],
                script: ["Christopher Nolan", "Jonathan Nolan"],
                classification: .EIGHTEEN
            ),
            MovieModel(
                title: "Os Excêntricos Tenenbaums",
                year: "2002",
                length: 110,
                cover: "filme14.jpg",
                directors: ["Wes Anderson"],
                script: ["Wes Anderson", "Owen Wilson"],
                classification: .TWELVE
            ),
            MovieModel(
                title: "La La Land",
                year: "2017",
                length: 128,
                cover: "filme15.jpg",
                directors: ["Damien Chazelle"],
                script: ["Damien Chazelle"],
                classification: .TWELVE
            ),
            MovieModel(
                title: "Os Serviços de Entrega da Kiki",
                year: "1990",
                length: 103,
                cover: "filme16.jpg",
                directors: ["Hayao Miyazaki"],
                script: ["Hayao Miyazaki", "Jack Fletcher", "John Semper"],
                classification: .L
            ),
            MovieModel(
                title: "O Feitiço de Áquila",
                year: "1985",
                length: 121,
                cover: "filme17.jpg",
                directors: ["Richard Donner"],
                script: ["Michael Thomas", "Tom Mankiewicz"],
                classification: .FOURTEEN
            ),
            MovieModel(
                title: "Os Incríveis",
                year: "2004",
                length: 115,
                cover: "image.jpg",
                directors: ["Brad Bird"],
                script: ["Brad Bird"],
                classification: .L
            )
        ]
    }
}

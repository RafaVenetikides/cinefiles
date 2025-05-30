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
                synopsis: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado",
                classification: .SIXTEEN,
                trailerId: "wxN1T1uxQ2g"
            ),
            MovieModel(
                title: "Cisne Negro",
                year: "2010",
                length: 108,
                cover: "filme2.jpg",
                directors: ["Darren Aronofsky"],
                script: ["Mark Heyman", "Andres Heinz", "John J. McLaughlin"],
                synopsis: "Uma esforçada bailarina luta para manter sua sanidade após obter o papel principal no Lago dos Cisnes de Tchaikovsky.",
                classification: .FOURTEEN,
                trailerId: "5jaI1XOB-bs"
            ),
            MovieModel(
                title: "Barbie a princesa e a plebeia",
                year: "2004",
                length: 85,
                cover: "filme3.jpg",
                directors: ["William Lau"],
                script: ["Cliff Ruby", "Elana Lesser", "Ruth Handler"],
                synopsis: "Uma plebeia, moradora de um vilarejo, é muito parecida com a princesa do reino. Os destinos das duas se cruzam quando a princesa é sequestrada, e a moça humilde usa sua incrível semelhança com ela para tentar salvar das mãos do vilão.",
                classification: .L,
                trailerId: "V5P6rMgkn3g"
            ),
            MovieModel(
                title: "Show de Truman",
                year: "1998",
                length: 103,
                cover: "filme4.jpg",
                directors: ["Peter Weir"],
                script: ["Peter Weir", "Andrew Niccol"],
                synopsis: "Truman Burbank é um pacato vendedor de seguros que leva uma vida simples com sua esposa Meryl Burbank. Porém, algumas coisas ao seu redor fazem com que ele passe a estranhar sua cidade, seus supostos amigos e até sua mulher. Após conhecer a misteriosa Lauren, ele fica intrigado e acaba descobrindo que toda sua vida foi monitorada por câmeras e transmitida em rede nacional.",
                classification: .TWELVE,
                trailerId: "s5Jc-7MYGhY"
            ),
            MovieModel(
                title: "Spirit: O Corcel Indomável",
                year: "2002",
                length: 83,
                cover: "filme5.jpg",
                directors: ["Kelly Asbury", "Lorna Cook"],
                script: ["John Fusco"],
                synopsis: "Animação sobre a amizade entre um menino indígena e um cavalo indomável apaixonado por uma égua. Ambientada no Velho Oeste americano, mostra o impacto do processo civilizatório na vida dos três e também na amizade que construíram.",
                classification: .L,
                trailerId: "vjtlYCNLu_U"
            ),
            MovieModel(
                title: "Labirinto do Fauno",
                year: "2006",
                length: 119,
                cover: "filme6.jpg",
                directors: ["Guillermo del Toro"],
                script: ["Guillermo del Toro"],
                synopsis: "Em 1944, na Espanha, a jovem Ofélia e sua mãe doente chegam ao posto do novo marido de sua mãe, um sádico oficial do exército que está tentando reprimir uma guerrilheira. Enquanto explorava um labirinto antigo, Ofélia encontra o Pan fauno, que diz que a menina é uma lendária princesa perdida e que ela precisa completar três tarefas perigosas a fim de se tornar imortal.",
                classification: .SIXTEEN,
                trailerId: "M09mCcVgrsA"
            ),
            MovieModel(
                title: "O Predestinado",
                year: "2015",
                length: 97,
                cover: "filme7.jpg",
                directors: ["Michael Spierig", "Peter Spierig"],
                script: ["Michael Spierig", "Peter Spierig", "Robert A Heinlein"],
                synopsis: "Um agente precisa viajar no tempo para impedir a ação de um criminoso responsável por um ataque que mata milhares de pessoas.",
                classification: .SIXTEEN,
                trailerId: "ikOlvl3Xhx0"
            ),
            MovieModel(
                title: "Gigantes de Aço",
                year: "2011",
                length: 127,
                cover: "filme8.jpg",
                directors: ["Shawn Levy"],
                script: ["Dan Gilroy", "Les Bohem", "Jeremy Leven", "John Gatins", "Richard Matheson"],
                synopsis: "Em um futuro próximo, as máquinas substituem os homens no ringue. As lutas de boxe acontecem entre robôs de alta tecnologia. Charlie, um ex-lutador frustrado, decide se juntar ao filho para construir um competidor imbatível.",
                classification: .TEN,
                trailerId: "choj0wMlvv8"
            ),
            MovieModel(
                title: "A Vastidão da Noite",
                year: "2019",
                length: 89,
                cover: "filme9.jpg",
                directors: ["Andrew Patterson"],
                script: ["James Montague", "Craig W. Sanger"],
                synopsis: "Duas crianças procuram a fonte de uma misteriosa frequência que surgiu em sua cidade.",
                classification: .TWELVE,
                trailerId: "ZEiwpCJqMM0"
            ),
            MovieModel(
                title: "Parasita",
                year: "2019",
                length: 132,
                cover: "filme10.jpg",
                directors: ["Bong Joon-ho"],
                script: ["Bong Joon-ho", "Jin Won Han"],
                synopsis: "Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe e filhos bolam um plano para se infiltrar também na abastada família, um a um. No entanto, os segredos e mentiras necessários à ascensão social cobram o seu preço.",
                classification: .SIXTEEN,
                trailerId: "Q38h5XD4RKE"
            ),
            MovieModel(
                title: "Passivonas",
                year: "2023",
                length: 91,
                cover: "filme11.jpg",
                directors: ["Emma Seligman"],
                script: ["Emma Seligman", "Rachel Sennott"],
                synopsis: "Duas alunas não populares do último ano do ensino médio criam um clube da luta para tentar impressionar e conquistar líderes de torcida.",
                classification: .FOURTEEN,
                trailerId: "vH5NAahf76s"
            ),
            MovieModel(
                title: "Turma da Mônica: Uma Aventura no Tempo",
                year: "2007",
                length: 80,
                cover: "filme12.jpg",
                directors: ["Mauricio de Sousa"],
                script: ["Mauricio de Sousa", "Flávio de Souza", "Didi Oliveira", "Emerson Bernardo de Abreu"],
                synopsis: "Franjinha está construindo uma máquina do tempo e precisa reunir moléculas dos quatro elementos: ar, água, fogo e terra. Mônica joga Sansão e, sem querer, acerta o aparelho, espalhando os elementos. Agora a turma precisa consertá-la.",
                classification: .L,
                trailerId: "AfPqH9ltHgw"
            ),
            MovieModel(
                title: "Amnésia (Memento)",
                year: "2001",
                length: 113,
                cover: "filme13.jpg",
                directors: ["Christopher Nolan"],
                script: ["Christopher Nolan", "Jonathan Nolan"],
                synopsis: "Leonard está caçando o homem que estuprou e matou sua esposa. Ele tem dificuldades em encontrar o assassino pois sofre de uma forma intratável de perda de memória. Mesmo que ele possa lembrar detalhes da vida antes do acidente, Leonard não consegue lembrar o que aconteceu quinze minutos atrás, onde está indo ou a razão.",
                classification: .EIGHTEEN,
                trailerId: "t1EuIMA_28w"
            ),
            MovieModel(
                title: "Os Excêntricos Tenenbaums",
                year: "2002",
                length: 110,
                cover: "filme14.jpg",
                directors: ["Wes Anderson"],
                script: ["Wes Anderson", "Owen Wilson"],
                synopsis: "Royal e sua esposa Etheline tiveram três filhos muito diferentes entre si, mas igualmente bem-sucedidos. Quando Etheline resolve se casar com outro, o irresponsável e excêntrico Royal resolve lutar por seu amor reunindo toda a família.",
                classification: .TWELVE,
                trailerId: "AbZXt952qjU"
            ),
            MovieModel(
                title: "La La Land",
                year: "2017",
                length: 128,
                cover: "filme15.jpg",
                directors: ["Damien Chazelle"],
                script: ["Damien Chazelle"],
                synopsis: "O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.",
                classification: .TWELVE,
                trailerId: "0pdqf4P9MB8"
            ),
            MovieModel(
                title: "Os Serviços de Entrega da Kiki",
                year: "1990",
                length: 103,
                cover: "filme16.jpg",
                directors: ["Hayao Miyazaki"],
                script: ["Hayao Miyazaki", "Jack Fletcher", "John Semper"],
                synopsis: "Por ordem de sua mãe, Kiki parte para um aprendizado de um ano, acompanhada por seu gato preto. A um comando de sua vassoura mágica, ela vai parar na charmosa cidadezinha de Moreoastal. Infelizmente, os hotéis locais não aceitam bruxas e a polícia a flagra fazendo algumas travessuras.",
                classification: .L,
                trailerId: "4bG17OYs-GA"
            ),
            MovieModel(
                title: "O Feitiço de Áquila",
                year: "1985",
                length: 121,
                cover: "filme17.jpg",
                directors: ["Richard Donner"],
                script: ["Michael Thomas", "Tom Mankiewicz"],
                synopsis: "O ladrão Gaston escapa da masmorra medieval de Aquila através da latrina. Os soldados estão prestes a matá-lo quando Navarra o salva. Navarra, viajando com seu falcão animado, planeja matar o bispo de Áquila com a ajuda de Gaston.",
                classification: .FOURTEEN,
                trailerId: "2MXq-TdXmd4"
            ),
            MovieModel(
                title: "Os Incríveis",
                year: "2004",
                length: 115,
                cover: "image.jpg",
                directors: ["Brad Bird"],
                script: ["Brad Bird"],
                synopsis: "Depois do governo banir o uso de superpoderes, o maior herói do planeta, o Sr. Incrível, vive de forma pacata com sua família. Apesar de estar feliz com a vida doméstica, o Sr. Incrível ainda sente falta dos tempos em que viveu como super-herói, e sua grande chance de entrar em ação novamente surge quando um velho inimigo volta a atacar. Só que agora ele precisa contar com a ajuda de toda a família para vencer o vilão.",
                classification: .L,
                trailerId: "ftBvKUAagnU"
            )
        ]
    }
}

import Foundation

struct MovieModel: Identifiable {
    let id = UUID()
    
    var poster: String
    var title: String
    var year: String
    var length: Int
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

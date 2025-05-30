//
//  MovieModel.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import Foundation

struct MovieModel: Identifiable {
    let id = UUID()
    
    var title: String
    var year: Int
    var length: Int
    
    var cover: String
    var directors: [String]
    var script: [String]
    
    var classification: classification
}

enum classification {
    case L
    case TEN
    case TWELVE
    case FOURTEEN
    case SIXTEEN
    case EIGHTEEN
}

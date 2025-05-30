//
//  HomeView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 25){
                ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
                HMovieListView(sectionName: "Favoritos da Edna", movies: [], color: .customPink)
                HMovieListView(sectionName: "Filmes FODÕES", movies: [], color: .customGreen)
                HMovieListView(sectionName: "Animações", movies: [], color: .customPink)
            }
        }
    }
}

#Preview {
    HomeView()
}



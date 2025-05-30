//
//  HomeView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
            
        }
    }
}

#Preview {
    HomeView()
}

//
//  ImageCarouselView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI
import Combine

struct ImageCarouselView: View {
    var images: [String]
    @State private var timer = Timer.publish(every: 5.0, on: .main, in: .common).autoconnect()
    @State private var selectedImageIndex: Int = 0
    @State private var timerID = UUID()
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedImageIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    ZStack(alignment: .bottom) {
                        Image("\(images[index])")
                            .resizable()
                            .tag(index)
                            .frame(height: 300)
                            .overlay (
                                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(1), Color.clear]), startPoint: .bottom, endPoint: UnitPoint(x: 0.5, y: 0.3))
                                    .frame(height: 100)
                                ,alignment: .bottom
                            )
                        
                        VStack(spacing: 4) {
                            Text(getCaption(for: index))
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .padding(.bottom, 32)
                        }
                    }
                }
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea()
            .onChange(of: selectedImageIndex) { _ in
                timerID = UUID()
            }
            .onReceive(timer.combineLatest(Just(timerID))) { _, _ in
                withAnimation(.default) {
                    selectedImageIndex = (selectedImageIndex + 1) % images.count
                }
            }
        }
    }
}
    
    func getCaption(for index: Int) -> String {
        switch index {
        case 0: return "Um clássico atemporal"
        case 1: return "Prefiro tomar um tiro"
        case 2: return "12 Princesas Bailarinas é melhor"
        default: return ""
        }
    }

#Preview {
    ImageCarouselView(images: ["bannerTDM", "bannerSpirit", "bannerBarbie"])
}

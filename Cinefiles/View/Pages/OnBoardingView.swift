//
//  OnBoardingView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 29/05/25.
//

import SwiftUI

struct OnBoardingView: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("OnBoardingBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("cineFiles_claro")
                        .resizable()
                        .frame(width: 237, height: 148)
                        .padding(.top, 60)
                    
                    Group{
                        Text("O maior acervo de filmes realmente ")
                            .foregroundStyle(.white)
                        +
                        Text("bons ")
                            .foregroundStyle(.customGreen)
                        +
                        Text("do mundo")
                            .foregroundStyle(.white)
                    }
                    .font(.system(size: 32, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.horizontal, 34)
                    
                    Spacer()
                    
                    CustomButtonView(
                        text: "Vamos lá",
                        color: Color.customPink
                    ) {
                        showOnboarding = false
                    }
                    
                    .padding(.horizontal, 60)
                    .padding(.bottom, 55)
                }
            }
        }
    }
}

#Preview {
    OnBoardingView(showOnboarding: .constant(true))
}

//
//  AppTabsView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI

struct AppTabsView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
                        
            TabView(selection: $selectedTab) {
                HomeView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.customDarkBlue))
                    .foregroundStyle(.white)
                    .tabItem {
                        Image(selectedTab == 0 ? "homeIconSelectedSmall" : "homeIconSmall")
                    }
                    .tag(0)
                
                Text("Search")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.customDarkBlue))
                    .foregroundStyle(.white)
                    .tabItem {
                        Image(selectedTab == 1 ? "searchIconSelectedSmall" : "searchIconSmall")
                    }
                    .tag(1)
                
                Text("Perfil")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.customDarkBlue))
                    .foregroundStyle(.white)
                    .tabItem {
                        Image(selectedTab == 2 ? "profileIconSelectedSmall" : "profileIconSmall")
                    }
                    .tag(2)
            }
            
            Rectangle()
                .fill(Color(.systemGray))
                .frame(height: 1) // Espessura da linha
                .edgesIgnoringSafeArea(.bottom) // Garante que fique na borda inferior
                .offset(y: -60)
        }
    }
}

#Preview {
    AppTabsView()
}

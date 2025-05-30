//
//  AppTabsView.swift
//  Cinefiles
//
//  Created by Rafael Venetikides on 30/05/25.
//

import SwiftUI

struct AppTabsView: View {
    @State private var selectedTab = 0
    @State var is_logado = false
    
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
                
                ProfileView()
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
                .frame(height: 1)
                .edgesIgnoringSafeArea(.bottom)
                .offset(y: -60)
        }
    }
}

#Preview {
    AppTabsView()
}

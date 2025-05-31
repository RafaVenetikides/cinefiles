import SwiftUI

struct AppTabsView: View {
    @State private var selectedTab = 0
    @State var is_logado = false
    
    var body: some View {
            ZStack(alignment: .bottom) {
                VStack(spacing: 0){
                    TabView(selection: $selectedTab) {
                        HomeView()
                             .tabItem {
                                Image(selectedTab == 0 ? "homeIconSelectedSmall" : "homeIconSmall")
                            }
                            .tag(0)
                        
                        SearchView()
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
                }

                VStack(spacing: 0) {
                    Spacer()
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                        .padding(.bottom, 83)
                }
                .ignoresSafeArea()
            }
    }
}

#Preview {
    AppTabsView()
}

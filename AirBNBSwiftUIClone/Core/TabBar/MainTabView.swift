//
//  MainTabView.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishListsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView()
}

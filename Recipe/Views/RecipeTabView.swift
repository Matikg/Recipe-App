//
//  RecipeTabView.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 22/03/2024.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
        
    }
}

#Preview {
    RecipeTabView()
}

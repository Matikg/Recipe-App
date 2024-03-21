//
//  ContentView.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 17/03/2024.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            
            
            
            
            NavigationView {
                List(model.recipes) { r in
                    
                    NavigationLink(destination: RecipeDetailView(recipe: r),
                                   label: {
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
            
                }
                .navigationBarTitle("All Recipes")
            }
           
        }
       
    }
}

#Preview {
    RecipeListView()
}

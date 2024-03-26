//
//  ContentView.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 17/03/2024.
//

import SwiftUI
// Test command
struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack {
            
            NavigationView {
                
                VStack(alignment: .leading) {
                    Text("All Recipes")
                        .padding(.top)
                        .font(.largeTitle)
                        .bold()
                    
                    
                    ScrollView {
                        LazyVStack(alignment: .leading) {
                            ForEach(model.recipes) { r in
                                
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
                                            .foregroundColor(.black)
                                    }
                                })
                                
                            }
                        }
                    }
                }
                .navigationBarHidden(true)
                .padding(.leading)
            }
            
        }
        
    }
}

#Preview {
    RecipeListView().environmentObject(RecipeModel())
}

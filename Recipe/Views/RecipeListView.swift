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
                        .font(Font.custom("Avenir Heavy", size: 24))
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
                                        
                                        VStack (alignment: .leading) {
                                            Text(r.name)
                                                .foregroundColor(.black)
                                                .font(Font.custom("Avenir Heavy", size: 16))

                                            
                                            RecipeHighlights(highlights: r.highlights)
                                                .foregroundColor(.black)
                                        }
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

//
//  RecipeHighlights.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 27/03/2024.
//

import SwiftUI

struct RecipeHighlights: View {
<<<<<<< HEAD
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
=======
    
    var allHighlights = ""
    
    init(highlights: [String]) {
        
        for index in 0..<highlights.count {
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
        }
        
    }
    
    var body: some View {
        Text(allHighlights)
>>>>>>> 64ad9a2 (Update text info in FeaturedView)
    }
}

#Preview {
<<<<<<< HEAD
    RecipeHighlights()
=======
    RecipeHighlights(highlights: ["test", "test2"])
>>>>>>> 64ad9a2 (Update text info in FeaturedView)
}

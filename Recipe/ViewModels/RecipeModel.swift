//
//  RecipeModel.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 17/03/2024.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
    }
    
    
}

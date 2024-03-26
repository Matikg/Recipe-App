//
//  DataService.swift
//  Recipe
//
//  Created by Mateusz Grudzień on 17/03/2024.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse data
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            let recipeData = try decoder.decode([Recipe].self, from: data)
            
            for recipe in recipeData {
                recipe.id = UUID()
                
                for i in recipe.ingredients {
                    i.id = UUID()
                }
            }
            
            return recipeData
            
            
        }
        catch {
            
            print(error)
        }
        
        return [Recipe]()
    }
    
    
}

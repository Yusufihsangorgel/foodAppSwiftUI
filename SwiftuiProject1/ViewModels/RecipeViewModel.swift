//
//  RecipeModel.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 4.08.2022.
//

import SwiftUI
import StepperView
final class RecipeViewModel : ObservableObject {
    @Published var foods : [FoodModel] = [
        FoodModel(foodName: "Apple",recipe: "", image: ""),
    ]
    
    
   @Published var steps = [
        TextView(text: "Yemek Adı Gir", font: Font.system(size: 12, weight: Font.Weight.regular)),
        TextView(text: "Tarifini Gir", font: Font.system(size: 12, weight: Font.Weight.regular)),
        TextView(text: "Resmini gir", font: Font.system(size: 12, weight: Font.Weight.regular)),
        TextView(text: "Onayla", font: Font.system(size: 12, weight: Font.Weight.regular))
    ]

    @Published var indicators = [
        StepperIndicationType.custom(Image(systemName:"1.circle.fill").font(.largeTitle).eraseToAnyView()),
        StepperIndicationType.custom(Image(systemName:"2.circle.fill").font(.largeTitle).eraseToAnyView()),
        StepperIndicationType.custom(Image(systemName:"3.circle.fill").font(.largeTitle).eraseToAnyView()),
        StepperIndicationType.custom(Image(systemName:"4.circle.fill").font(.largeTitle).eraseToAnyView())
    ]
    
 
    func addNewFood(foodName: String,recipe: String,image: String){
        guard !foodName.isEmpty && !recipe.isEmpty && !image.isEmpty else {
            return
        }
        let newFoodModelResult = FoodModel(foodName: foodName,recipe: recipe, image: image)
        foods.append(newFoodModelResult)
       let  foodName = ""
       let recipe = ""
       let image = ""
    }
    
    
}

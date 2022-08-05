//
//  RecipeModel.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 4.08.2022.
//

import SwiftUI

class RecipeViewModel : ObservableObject {
    @Published var foods : [FoodModel] = [
        FoodModel(foodName: "Apple",recipe: "", image: ""),
    ]
}

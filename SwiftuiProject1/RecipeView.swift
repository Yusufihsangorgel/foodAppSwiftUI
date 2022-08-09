//
//  RecipeView.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 9.08.2022.
//

import SwiftUI

struct RecipeView: View {
    @StateObject var viewModel = RecipeViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.foods){item in
                        myRecipeCard(foodName: viewModel.foods[0].foodName, recipe: viewModel.foods[0].recipe, image: viewModel.foods[0].image)
                    }
                }
            }

        }
        .shadow(color: .red, radius: 2, x: 0, y: 0)
        .padding(.bottom,20)
        .padding(.top,22)
    }
}





struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}

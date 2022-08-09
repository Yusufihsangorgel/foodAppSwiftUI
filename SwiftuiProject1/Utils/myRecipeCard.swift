//
//  myRecipeCard.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 9.08.2022.
//

import SwiftUI

struct myRecipeCard: View {
        var foodName: String
        var recipe: String
        var image: String
        var body: some View {
            VStack(alignment: .leading, spacing: 12){
                Image("food1")
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        HStack {
                            Spacer()
                            VStack {
                                Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                            .shadow(color: .red, radius: 2, x: 0, y: 0)
                            .padding(.trailing,20)
                            .padding(.top,22)
                                Spacer()
                            }
                        }
                    
                    )
                VStack(alignment: .leading, spacing: 12){
                    Text(foodName)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .lineLimit(1)
                    
                    Text(recipe)
                        .font(.system(.body,design: .serif))
                        .foregroundColor(.gray)
                        .italic()
                    
                   
                }
                .padding()
                .padding(.bottom,12)
            }
            .shadow(color: .red, radius: 2, x: 0, y: 0)
            .padding(.bottom,20)
            .padding(.top,22)
        }
    }




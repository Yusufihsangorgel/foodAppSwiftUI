//
//  ExampleView11.swift
//  StepperView_Example
//
//  Created by Venkatnarayansetty, Badarinath on 4/3/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI
import UIKit
import StepperView

let customGreen = UIColor(red: 0.00, green: 0.80, blue: 0.66, alpha: 1.00)


struct AddRecipe: View {
  

        
        let indicationTypes1 = [
               StepperIndicationType<NumberedCircleView>.animation(NumberedCircleView(text: "1")),
                                                       .animation(NumberedCircleView(text: "2")),
                                                       .animation(NumberedCircleView(text: "3")),
                                                      ]

        
        let set3 = [ TextView(text:"Yemek Adı"),
                     TextView(text:"Tarifi"),
                     TextView(text:"Fotoğrafı"),
                     ]
        
        var body: some View {
            NavigationView {
                ScrollView(Axis.Set.vertical, showsIndicators: false) {
                    VStack(spacing: 10) {
                       
                  
                        StepperView()
                            .addSteps(self.set3)
                            .indicators(self.indicationTypes1)
                            .spacing(30)
                            .lineOptions(StepperLineOptions.custom(1, Colors.blue(.teal).rawValue))
                            .loadingAnimationTime(0.02) 
                            .offset(x: UIScreen.main.bounds.size.width / 4)
                    }
                    
                }
                .navigationBarTitle("StepperView")
            }
        }
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
    }
}

//
//  Splash.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 9.08.2022.
//

import SwiftUI

struct Splash: View {
    @State var isActive : Bool = false
       @State private var size = 0.8
       @State private var opacity = 0.5
       
       // Customise your SplashScreen here
       var body: some View {
           if isActive {
               HomePage()
           } else {
               VStack {
                   VStack {
                       Image(systemName: "fork.knife.circle.fill")
                           .font(.system(size: 80))
                           .foregroundColor(Color("CustomOrange"))
                       Text("Yemek Tarifleri")
                           .font(Font.custom("Baskerville-Bold", size: 26))
                           .foregroundColor(.black.opacity(0.80))
                   }
                   .scaleEffect(size)
                   .opacity(opacity)
                   .onAppear {
                       withAnimation(.easeIn(duration: 1.2)) {
                           self.size = 0.9
                           self.opacity = 1.00
                       }
                   }
               }
               .onAppear {
                   DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                       withAnimation {
                           self.isActive = true
                       }
                   }
               }
           }
       }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}

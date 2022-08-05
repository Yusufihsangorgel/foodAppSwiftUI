//
//  myButton.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 4.08.2022.
//

import SwiftUI

struct myButton: View {
    let buttonText: String
        let action: () -> Void

        var body: some View {
            Button(buttonText, action: action)
                .buttonStyle(OrangeButtonStyle())
        }

}





struct OrangeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color("CustomOrange")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}


//struct myButton_Previews: PreviewProvider {
//    static var previews: some View {
//        myButton()
//    }
//}

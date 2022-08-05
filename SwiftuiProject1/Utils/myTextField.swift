//
//  myTextForm.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 4.08.2022.
//

import SwiftUI

struct myTextField: View {
    var label: String
    var text: Binding<String>

    var body: some View {
        TextField(label, text: text)
            .textFieldStyle(OvalTextFieldStyle())
      
            
    }
}


struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color("CustomOrange")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(10)
            .shadow(color: .black, radius: 5)
            
    }
}

//
//  ContentView.swift
//  SwiftuiProject1
//
//  Created by Kenan Developer on 30.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isFavorite = "heart"
    var body: some View {
        NavigationView {
            Text("Hello World")
                .navigationTitle("Aşcım")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {
                   
                        }) {
                            Label("Favorite", systemImage: isFavorite)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {
                            print("Button 2 Clicked")
                        }) {
                            Label("Profile", systemImage: "person.fill")
                        }
                    }
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

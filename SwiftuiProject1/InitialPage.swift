

import SwiftUI

struct InitialPage : View {
    
    var body: some View {
    
        TabView {
            RecipeView()
                .tabItem(){
                    Image(systemName: "fork.knife.circle.fill")
                    Text("Yemekler")
                }
            AddRecipe()
                .tabItem(){
                    Image(systemName: "plus")
                    Text("Yemek Ekle")
                }
            
            Notifications()
                .tabItem(){
                    Image(systemName: "bell")
                    Text("Bildirimler")
                }
            ProfilePage()
                .tabItem(){
                    Image(systemName: "person")
                    Text("Profile")
                }
                
            
        }
        .accentColor(Color("CustomOrange"))
        
    }
}

struct InitialPageView_Previews: PreviewProvider {
    static var previews: some View {
        InitialPage()
    }
}


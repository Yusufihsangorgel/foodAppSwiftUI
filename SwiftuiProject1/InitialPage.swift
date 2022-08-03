

import SwiftUI

struct InitialPage : View {
    var body: some View {
    
        TabView {
           HomePage()
                .tabItem(){
                    Image(systemName: "house")
                    Text("Anasayfa")
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
        
    }
}

struct InitialPageView_Previews: PreviewProvider {
    static var previews: some View {
        InitialPage()
    }
}


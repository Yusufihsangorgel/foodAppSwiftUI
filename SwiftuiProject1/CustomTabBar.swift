

import SwiftUI

struct CustomTabbar : View {
    var body: some View {
    
        TabView {
            FirstPage()
                .tabItem(){
                    Image(systemName: "star")
                    Text("Star")
                }
            
            
            
            ContentView()
                .tabItem(){
                    Image(systemName: "heart")
                    Text("favorite")
                }
            
        }

    }
}

struct CustomTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabbar()
    }
}

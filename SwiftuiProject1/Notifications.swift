

import SwiftUI

struct Notifications : View {
    var body: some View {
        NavigationView{
            List {
                HStack {
                    Text("Kenan tarifinizi begendi")
                    Spacer()
                    Image(systemName: "hand.thumbsup")
                 }
                HStack {
                    Text("Takip Ettiginiz Kenan Kullanicisi Yeni Bir Veri Ekledi")
                    Spacer()
                    Image(systemName: "folder.badge.plus")
                 }
            }
            .navigationTitle("Bildirimler")
            .font(.title3)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}




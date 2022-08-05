

import SwiftUI

struct ProfilePage : View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
       }
    
    
    @State private var birthDate = Date()
    @State private var isToggleNotifications = true
    @State private var isToggleSMS = true
    @State private var firstName = ""
    @State private var lastName = ""
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Lütfen Bilgilerinizi Giriniz")
                }
                VStack (spacing : 20){
                    Text("Dogum Tarihini Giriniz")
                        .textFieldStyle(OvalTextFieldStyle())
                    DatePicker("Dogum Tarihi", selection: $birthDate)
                        .frame(maxHeight : 50)
                        .textFieldStyle(OvalTextFieldStyle())
                    Spacer()
                        .frame(height: 50)
                   
                    Group {
                        Toggle(isOn: $isToggleNotifications){
                            Text("Bildirimler")
                                .foregroundColor(Color("CustomOrange"))
                                
                            Image(systemName: "bell")
                    
                        }
                        .toggleStyle(SwitchToggleStyle(tint: Color("CustomOrange")))
                        Toggle(isOn: $isToggleSMS){
                            Text("SMS")
                                .foregroundColor(Color("CustomOrange"))
                            Image(systemName: "phone")
                        }
                        .toggleStyle(SwitchToggleStyle(tint: Color("CustomOrange")))
                    }
                    .font(.title)
                    
           
                    TextField("Ad", text: $firstName)
                        .textFieldStyle(OvalTextFieldStyle())
                       
                    myTextField(label: "Soyad", text: $lastName)
                        
                    myButton(buttonText: "Kaydet", action: {print("basıldı")} )
                    
                  
                }.padding()
            }
            .navigationBarTitle("Try it!", displayMode: .automatic)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}











struct ProfilePageiew_Previews: PreviewProvider {
      static var previews: some View {
        ProfilePage()
    }
}



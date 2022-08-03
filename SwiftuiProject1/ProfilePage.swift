

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
                       
                    TextField("Soyad", text: $lastName)
                        .textFieldStyle(OvalTextFieldStyle())
                       
                    
                    Button(action: {
                        
                    }){
                        Text("Kaydet")
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                    }
                    .buttonStyle(OrangeButtonStyle())
                }.padding()
            }
            .navigationBarTitle("Try it!", displayMode: .automatic)
            .navigationViewStyle(StackNavigationViewStyle())
        }
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

struct OrangeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color("CustomOrange")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}








struct ProfilePageiew_Previews: PreviewProvider {
      static var previews: some View {
        ProfilePage()
    }
}





import SwiftUI

struct AddRecipe : View {
    @State private var recipeName = ""
   
    
    var body: some View {
        NavigationView{
            VStack{
                myTextField(label: "Yemek ismi", text: $recipeName)
            }
            .navigationTitle("Yemek Ekle")
        }
    }
}



fileprivate func myTextField(label :String,text :Binding<String>) -> some View {
    
    return TextField(label, text: text)
        .textFieldStyle(OvalTextFieldStyle())
        .padding()
}


struct FoodModel : Identifiable {
     var id = UUID()
    var foodName: String
    var recipe: String
    var image: String
}

class FoodViewModel : ObservableObject {
    @Published var foods : [FoodModel] = [
        FoodModel(foodName: "Apple",recipe: "", image: ""),
    ]
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
    }
}



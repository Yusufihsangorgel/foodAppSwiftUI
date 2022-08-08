import SwiftUI
import UIKit
import StepperView

let customGreen = UIColor(red: 0.00, green: 0.80, blue: 0.66, alpha: 1.00)


struct AddRecipe: View {
    @StateObject var viewModel = RecipeViewModel()
  @State private var foodName = ""
    @State private var recipe = ""
    @State private var image = ""

    
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
       }
        
   
    
        
        var body: some View {
            NavigationView {
        
                Form {
                    Group{
                        Section{
                            Text("Lütfen yemek bilgilerini giriniz")
//                                .font(.system(Font.TextStyle.headline, design: .rounded))
//                                .foregroundColor(Color("CustomOrange"))
                            
                        }
                    }
       
                    
                    
                    
                    ScrollView(Axis.Set.vertical, showsIndicators: true) {
                        VStack() {
                            Spacer(minLength: 50.0)
                            StepperView()
                                .addSteps(viewModel.steps)
                                .indicators(viewModel.indicators)
                                    .stepIndicatorMode(StepperMode.horizontal)
                                    .lineOptions(StepperLineOptions.rounded(2, 8, Color.black))
                                    .stepLifeCycles([StepLifeCycle.completed, .completed, .completed, .pending])
                                    .spacing(50)
                            Group{
                                Spacer(minLength: 50.0)
                                myTextField(label: "Yemek Adı", text: $foodName)
                          
                                myTextField(label: "Tarifi", text: $recipe)
                     
                                myTextField(label: "Fotoğrafı", text: $image)
                            }
                            .padding([.bottom, .horizontal], 20)
                          
                            myButton(buttonText: "Onayla", action: {
                                self.addNewFood()
                            } )
                         
                        }
                        
                    }
                    .navigationBarTitle("Yemek Ekle", displayMode: .automatic)
                    .navigationViewStyle(StackNavigationViewStyle())
                    .foregroundColor(Color("CustomOrange"))
                }
                
            }
        }
    
    
    
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
    }
}

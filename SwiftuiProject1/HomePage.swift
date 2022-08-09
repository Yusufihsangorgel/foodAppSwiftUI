

import SwiftUI

struct HomePage : View {
    var body: some View {
        WalkthroughScreen()
    }
}


struct WalkthroughScreen: View{
    @State var selectedTab: HomeModel = homeList[0]
    @State var isGo: Bool = false
    var body: some View{
        
        ZStack{
            GeometryReader{proxy in
                let frame = proxy.frame(in: .global)
                
                Image(selectedTab.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: frame.width, height: frame.height, alignment: .center)
                    .cornerRadius(0)
            }
            .ignoresSafeArea()
            
            
            VStack{
                Text("En lezzetli tarifler")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Hoş geldiniz")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.bottom,30)
                
                VStack {
                    GeometryReader{proxy in
                        let frame = proxy.frame(in: .global)
                        TabView(selection: $selectedTab){
                            ForEach(homeList){
                                trip in
                                Image(trip.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: frame.width,height: frame.height,alignment: .center)
                                    .cornerRadius(4)
                                    .tag(trip)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    Text(selectedTab.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    HomeViewModel(maxPages: homeList.count, currentPage: getIndex())
                    
                }
                .padding(.top)
                .padding(.horizontal,10)
                .padding(.bottom,5)
                .background(Color.white.cornerRadius(10))
                .padding(.horizontal,20)
                
                
                Button(action: {
                    self.isGo = true
                }, label: {
                    Text("Hadi Başlayalım")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical,18)
                        .frame(maxWidth: .infinity)
                        .background(Color("CustomOrange"))
                        .cornerRadius(10)
                })
                .sheet(isPresented: $isGo, content: {
                    InitialPage()
                })
                .padding(.top,30)
                .padding(.horizontal)
            }
            .padding()
        }
    }
    func getIndex()->Int{
        let index = homeList.firstIndex{ (HomeModel) -> Bool in
            return selectedTab.id == HomeModel.id
        } ?? 0
        return index
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}





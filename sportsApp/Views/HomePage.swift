//
//  HomePage.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/21/24.
//

import SwiftUI


struct HomePage: View {
    let layoutProperties: LayoutProperties
    var body: some View {
        
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    ZStack {
                        Image("Banner")
                            .resizable()
                            .overlay(Color.black)
                            .opacity(0.4)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width)
                            .clipped()
                        
                        VStack {
                            Text("HER Game, HER Rules, TrailblazHER")
                                .foregroundColor(.white)
                                .frame(width: UIScreen.main.bounds.width, alignment: .center)
                                .font(.custom(
                                       "Avenir-BlackOblique",
                                       size: layoutProperties.customFontSize.extraLarge * 1.6))
                                .multilineTextAlignment(.center)
                            
                            Image(systemName: "chevron.down")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: layoutProperties.customFontSize.extraLarge * 1.5, height: layoutProperties.customFontSize.extraLarge, alignment: .center)
                        }
                    }
                
                    .frame(width: UIScreen.main.bounds.width)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    
                    HStack {
                        NavigationLink (destination: AthleteScreen(layoutProperties: layoutProperties)) {
                            ZStack {
                                Rectangle()
                                    .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                                    .foregroundColor(Color(hex: "#FFC4A3"))
                                    .cornerRadius(30)
                                
                                VStack {
                                    Image("Runner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                                
                                    Text("Athletes")
                                        .foregroundColor(.white)
                                        .font(.custom(
                                            "Avenir-Oblique",
                                            size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                        }
                        NavigationLink(destination: SportScreen(layoutProperties: layoutProperties)) {
                            ZStack {
                                Rectangle()
                                    .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                                    .cornerRadius(30)
                                    .foregroundColor(Color(hex: "#FF9A76"))
                                
                                VStack {
                                    Image("Gloves")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                    
                                    Text("Sports")
                                        .foregroundColor(.white)
                                        .font(.custom(
                                            "Avenir-Oblique",
                                            size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                            
                        }
                        NavigationLink(destination: GearScreen(layoutProperties: layoutProperties)) {
                            ZStack {
                                Rectangle()
                                    .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                                    .cornerRadius(30)
                                    .foregroundColor(Color(hex: "#F96D80"))
                                VStack {
                                    Image("Shoes")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium * 1.1)
                                    
                                    Text("Gear")
                                        .foregroundColor(.white)
                                        .font(.custom(
                                            "Avenir-Oblique",
                                            size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
   
   
}

struct HomeRootView<Content:View>:View{
   let isLandscape:Bool
   @ViewBuilder var content:() -> Content
   var body: some View{
       if(isLandscape){
           HStack{
               content()
           }
       }
       else{
           VStack{
               content()
           }
       }
       
   }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HomePage(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
            HomePage(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
            HomePage(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
            HomePage(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
    }
}

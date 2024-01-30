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
                            .opacity(0.6)
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, alignment: .top)
                            .edgesIgnoringSafeArea(.horizontal)
                            .clipped()
                        
                        Spacer()
                        Text("HER Game, HER Rules, TrailblazHER")
                            .foregroundColor(.white)
                            .font(Font.custom("Nexa-Trial-HeavyItalic", size: layoutProperties.customFontSize.extraLarge * 2))
                            .multilineTextAlignment(.center)
                            .frame(width: UIScreen.main.bounds.width, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                        
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: layoutProperties.customFontSize.extraLarge * 1.5, height: layoutProperties.customFontSize.extraLarge * 1.5, alignment: .center)
                            .offset(y : 150)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                    HStack {
                        NavigationLink (destination: AthleteScreen()) {
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
                                        .font(Font.custom("Nexa-Trial-RegularItalic", size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                        }
                        NavigationLink(destination: SportScreen()) {
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
                                        .font(Font.custom("Nexa-Trial-RegularItalic", size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                            
                        }
                        NavigationLink(destination: GearScreen()) {
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
                                        .font(Font.custom("Nexa-Trial-RegularItalic", size: layoutProperties.customFontSize.large))
                                        .offset(y: -layoutProperties.customFontSize.extraLarge)
                                }
                            }
                        }
                    
                    }
                    
                }
                
            }
            
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

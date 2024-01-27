//
//  HomePage.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/21/24.
//

import SwiftUI

struct HomePage: View {
    
    func setGradientBackground() -> some View {
        let colorTop = Color(hex: "#FFC4A3")
        let colorMiddle = Color(hex:"#FF9E7C")
        let colorBottom = Color(hex: "#FF7855")
        
        return LinearGradient(gradient: Gradient(colors: [colorTop, colorMiddle, colorBottom]), startPoint: .bottom, endPoint: .top)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Banner")
                        .resizable()
                        .opacity(0.6)
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 500)
                        .clipped()
                
                    
                    
                    Text("HER Game, HER Rules, TrailblazHER")
                        .foregroundColor(.white)
                        .font(Font.custom("Nexa-Trial-HeavyItalic", size: 60))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                }

                HStack {
                    NavigationLink (destination: AthleteScreen()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 375, height: 450)
                                .foregroundColor(Color(hex: "#FFC4A3"))
                                .cornerRadius(30)
                        
                            VStack {
                                Image("Runner")
                                    .resizable()
                                    .scaledToFit()
                                
                                Text("Athletes")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    .offset(y: -10)
                            }
                        }
                    }
                    .padding(20)
                    
                    
                    NavigationLink(destination: SportScreen()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 375, height: 450)
                                .cornerRadius(30)
                                .foregroundColor(Color(hex: "#FF9A76"))
                            
                            VStack {
                                Image("Gloves")
                                    .resizable()
                                    .scaledToFit()
                                
                                
                                Text("Sports")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    .offset(y: -10)
                            }
                        }
                        
                    }
                    .padding(20)
                    
                    NavigationLink(destination: GearScreen()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 375, height: 450)
                                .cornerRadius(30)
                                .foregroundColor(Color(hex: "#F96D80"))
                            VStack {
                                Image("Shoes")
                                    .resizable()
                                    .scaledToFit()
                        
                                Text("Gear")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    .offset(y: -10)
                            }
                        }
                    }
                    .padding(20)
                }
            }
            .padding(.bottom, 100)
        }
        
    .navigationViewStyle(StackNavigationViewStyle())
    .navigationBarHidden(true)
  
    }
        
}

#Preview {
    HomePage()
}

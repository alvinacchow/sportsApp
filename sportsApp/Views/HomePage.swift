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
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 500)
                        .clipped()
                    
                    
                    Text("HER Game, HER Rules, TrailblazHER")
                        .foregroundColor(.white)
                        .font(Font.custom("Nexa-Trial-BoldItalic", size: 50))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                }
                .offset(y:-50)

                
                ZStack{
                    LazyVStack(alignment: .center, spacing: 30) {
                        ZStack {
                            VStack(alignment: .center) {
                                
                                NavigationLink (destination: AthleteScreen()) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 600, height: 100)
                                            .foregroundColor(Color(hex: "#FFC4A3"))
                                            .cornerRadius(30)
                                        
                                        Text("Athletes")
                                            .foregroundColor(.white)
                                            .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    }
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.white, lineWidth: 3))
                                    
                                }
                                .padding(10)
                                
                                NavigationLink(destination: SportScreen()) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 600, height: 100)
                                            .cornerRadius(30)
                                            .foregroundColor(Color(hex: "#FF9A76"))
                                        
                                        Text("Sports")
                                            .foregroundColor(.white)
                                            .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    }
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.white, lineWidth: 3))
                                    
                                }
                                .padding(10)
                                
                                NavigationLink(destination: GearScreen()) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 600, height: 100)
                                            .cornerRadius(30)
                                        
                                            .foregroundColor(Color(hex: "#F96D80"))
                                        Text("Gear")
                                            .foregroundColor(.white)
                                            .font(Font.custom("Nexa-Trial-RegularItalic", size: 30))
                                    }
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(.white, lineWidth: 3))
                                }
                                .padding(10)
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

#Preview {
    HomePage()
}

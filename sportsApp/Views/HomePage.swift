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
                    setGradientBackground().ignoresSafeArea()
                
                    HStack {
                        Spacer()
                        Text("HER Game, HER Rules, TrailblazHER")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .padding(.horizontal, 50)
                        Spacer()
                        Image("RunIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300, alignment: .center)
                            .padding(.horizontal, 200)
                    }
                }
                
                
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
                                            .font(.title)
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
                                            .font(.title)
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
                                            .font(.title)
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
                .frame(height: 700)
            }
        }
        
    .navigationViewStyle(StackNavigationViewStyle())
    .navigationBarHidden(true)
  
    }
        
}

#Preview {
    HomePage()
}

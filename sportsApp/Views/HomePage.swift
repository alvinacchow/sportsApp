//
//  HomePage.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/21/24.
//

import SwiftUI

struct HomePage: View {
    
    func setGradientBackground() -> some View {
        let colorTop = Color(
            red: Double(0xfe) / 255.0,
            green: Double(0xd9) / 255.0,
            blue: Double(0xa1) / 255.0
        )
        
        let colorBottom = Color(
            red: Double(0xf7) / 255.0,
            green: Double(0xa1) / 255.0,
            blue: Double(0x5e) / 255.0
        )
        
        return LinearGradient(gradient: Gradient(colors: [colorTop, colorBottom]), startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                setGradientBackground().ignoresSafeArea()
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
                            
                            NavigationLink(destination: AthleteScreen()) {
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
                            
                            NavigationLink(destination: AthleteScreen()) {
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
        }
        .navigationViewStyle(StackNavigationViewStyle())
    
    }
}

#Preview {
    HomePage()
}

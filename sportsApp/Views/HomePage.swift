//
//  HomePage.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/21/24.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        NavigationView {
            LazyVStack(alignment: .center, spacing: 30) {
                ZStack {
                    VStack(alignment: .center) {
                        
                        NavigationLink (destination: AthleteScreen()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 600, height: 100)
                                    .cornerRadius(30)
                                    .foregroundColor(Color(hex: "#FFC4A3"))
                                
                                Text("Athletes")
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 600, height: 100)
                                .cornerRadius(30)
                                .foregroundColor(Color(hex: "#FF9A76"))
                                
                            Text("Sports")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 600, height: 100)
                                .cornerRadius(30)
                                
                                .foregroundColor(Color(hex: "#F96D80"))
                            Text("Gear")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }

                }
                
            }
            .padding()
            .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .ignoresSafeArea()
    
    }
}

#Preview {
    HomePage()
}

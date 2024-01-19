//
//  MainScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

import SwiftUI

struct MainScreen: View {
    private var data: [Int] = Array (1...6)
    private let colors: [Color] = [.red, .green, .blue, .yellow]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 400))
    ]
    
    var body: some View {
        NavigationView {
           
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 40) {
                    ForEach(data, id:\.self) { number in
                        ZStack {
                            Rectangle()
                                .frame(width:400, height:400)
                                .foregroundColor(colors[number%4])
                                .cornerRadius(30)
                            Text("\(number)")
                                .foregroundColor(.white)
                                .font(.system(size:80, weight: .medium, design: .rounded))
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
        
}

#Preview {
    MainScreen()
}

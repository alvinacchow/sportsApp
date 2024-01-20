//
//  MainScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

// Using the Image view to display the image
//            one_williams.image
//                .resizable()
//                .frame(width: 100, height: 100)
import SwiftUI



struct MainScreen: View {
    private var athletes: [Athlete] = [
        one_williams,
        two_biles,
        three_ledecky,
        four_hamm,
        five_vonn,
        six_turasi,
        seven_felix,
        eight_king,
        nine_jennings,
        ten_kim,
        eleven_zhang,
        twelve_gauff,
        thirteen_clark,
        fourteen_thompson,
        fifteen_mclaughlin
    ]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    
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
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 30) {
                    ForEach(athletes) { athlete in
                        ZStack {
                            VStack {
                                athlete.image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                    .cornerRadius(300)
                                
                                Text(athlete.title)
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .medium, design: .rounded))
                            }
                        }
                    }
                }
            }
            .padding()
            .background(setGradientBackground())
            .ignoresSafeArea()
            

            
        }
        .padding()
        .navigationViewStyle(StackNavigationViewStyle())
        .background(setGradientBackground())
        .ignoresSafeArea()
    }
    
        
}

#Preview {
    MainScreen()
}

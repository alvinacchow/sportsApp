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
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 30) {
                    ForEach(athletes) { athlete in
                        ZStack {
                            athlete.image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .cornerRadius(30)
                            
                            Text(athlete.title)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                }
            }
            
        }
        .padding()
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
        
}

#Preview {
    MainScreen()
}

//
//  MainScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.

import SwiftUI



struct AthleteScreen: View {
    
    @State private var isNextScreenActive = false
    @State private var selectedAthlete: Athlete?
    
    private var athletes: [Athlete] = [
        one_williams,
        two_biles,
        three_ledecky,
        four_hamm,
        five_vonn,
        six_taurasi,
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

                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: adaptiveColumns, spacing: 30) {
                        ForEach(athletes) { athlete in
                            ZStack {
                                
                                VStack {
                                    
                                    Button(action: {
                                        // Update the state to trigger navigation
                                        selectedAthlete = athlete
                                        isNextScreenActive = true
                                    }) {
                                        athlete.image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300, height: 300)
                                            .cornerRadius(30)
                                    }
                                    
                                    Text(athlete.title)
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .medium, design: .rounded))
                                }
                            }
                            .sheet(item: $selectedAthlete) { athlete in
                                CardPopUp(selectedAthlete: athlete)
                            }
                        }
                    }
                    .padding(60)
                    .ignoresSafeArea()
                    
                }
                .background(setGradientBackground())
                .ignoresSafeArea()
                
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .background(setGradientBackground())
            .ignoresSafeArea()
            
    
    }
    
        
}

#Preview {
    AthleteScreen()
}

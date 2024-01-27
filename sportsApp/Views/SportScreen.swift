//
//  SportScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/22/24.
//

import Foundation
import SwiftUI

struct SportScreen: View {
    
    @State private var isNextScreenActive = false
    @State private var selectedSport: Sport?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    private var sports: [Sport] = [
        one_rugby,
        two_football,
        three_cricket,
        four_wrestling,
        five_hockey,
        six_boxing,
        seven_racing,
        eight_mma
    ]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 300))
    ]

    var body: some View {
        VStack {
            Spacer()
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                    ToolbarItem(placement:
                        .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "house")
                                    .foregroundColor(Color.white)
                            })
                        }
                        
                })
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color(hex: "#FF9A76"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                

        }
            
        NavigationView {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: adaptiveColumns, spacing: 30) {
                    ForEach(sports) { sport in
                        ZStack {
                            
                            VStack {
                                
                                Button(action: {
                                    selectedSport = sport
                                    isNextScreenActive = true
                                }) {
                                    sport.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 300, height: 300)
                                        .cornerRadius(30)
                                }
                                
                                Text(sport.title)
                                    .foregroundColor(.black)
                                    .font(Font.custom("Nexa-Trial-Book", size: 20))
                            }
                        }
                        .sheet(item: $selectedSport) { sport in
                            SportPopUp(selectedSport: sport)
                        }
                    }
                }
                .padding(60)
                .ignoresSafeArea()
                
            }
            .background(.white)
            .ignoresSafeArea()

        }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(.white)
        .ignoresSafeArea()
        
        
    }
       
}

#Preview {
    SportScreen()
}

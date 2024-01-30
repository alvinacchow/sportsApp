//
//  SportScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/22/24.
//

import Foundation
import SwiftUI

struct SportScreen: View {
    let layoutProperties: LayoutProperties
    @State private var isNextScreenActive = false
    @State private var selectedSport: Sport?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    init(layoutProperties: LayoutProperties) {
            self.layoutProperties = layoutProperties
        }
    
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
    
    

    var body: some View {
        let adaptiveColumns = [
            GridItem(.adaptive(minimum: layoutProperties.customSquareSize.medium))
        ]
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
                LazyVGrid(columns: adaptiveColumns, spacing: layoutProperties.customFontSize.small) {
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
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium)
                                        .cornerRadius(30)
                                }
                                
                                Text(sport.title)
                                    .foregroundColor(.black)
                                    .font(Font.custom(
                                        "Avenir-Medium",
                                        size: layoutProperties.customFontSize.medium))
                            }
                        }
                        .sheet(item: $selectedSport) { sport in
                            SportPopUp(layoutProperties: layoutProperties, selectedSport: sport)
                        }
                    }
                }
                .padding(layoutProperties.customSquareSize.small)
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

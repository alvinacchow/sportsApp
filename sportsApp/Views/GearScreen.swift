//
//  GearScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/26/24.
//

import Foundation
import SwiftUI

struct GearScreen: View {
    let layoutProperties: LayoutProperties
    @State private var isNextScreenActive = false
    @State private var selectedGear: Gear?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    init(layoutProperties: LayoutProperties) {
            self.layoutProperties = layoutProperties
        }
    
    private var gears: [Gear] = [
        one_sportsBra,
        two_tampon,
        three_shorts,
        four_headbands,
        five_hydration,
        six_helmets,
        seven_mouthguard,
        eight_safetyPads,
        nine_braces,
        ten_footwear
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
                .toolbarBackground(Color(hex: "#F96D80"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
            
        NavigationView {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: adaptiveColumns, spacing: layoutProperties.customFontSize.small) {
                    ForEach(gears) { gear in
                        ZStack {
                            
                            VStack {
                                
                                Button(action: {
                                    selectedGear = gear
                                    isNextScreenActive = true
                                }) {
                                    gear.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium)
                                        .cornerRadius(30)
                                }
                                
                                Text(gear.title)
                                    //.foregroundColor(.black)
                                    .font(Font.custom(
                                        "Avenir-Medium",
                                        size: layoutProperties.customFontSize.medium))
                            }
                        }
                        .sheet(item: $selectedGear) { gear in
                            GearPopUp(layoutProperties: layoutProperties, selectedGear: gear)
                        }
                    }
                }
                .padding(layoutProperties.customSquareSize.small * 0.5)
                .ignoresSafeArea()
            }
            .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(.white)
        .ignoresSafeArea()
    }
}

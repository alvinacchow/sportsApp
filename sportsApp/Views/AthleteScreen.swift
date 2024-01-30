//
//  MainScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.

import SwiftUI



struct AthleteScreen: View {
    let layoutProperties: LayoutProperties
    @State private var isNextScreenActive = false
    @State private var selectedAthlete: Athlete?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    init(layoutProperties: LayoutProperties) {
            self.layoutProperties = layoutProperties
        }
    
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
                .toolbarBackground(Color(hex: "#FFC4A3"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                

        }
            
        NavigationView {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: adaptiveColumns, spacing: layoutProperties.customFontSize.small) {
                    ForEach(athletes) { athlete in
                        ZStack {
                            VStack {
                                Button(action: {
                                    selectedAthlete = athlete
                                    isNextScreenActive = true
                                }) {
                                    athlete.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium)
                                        .cornerRadius(30)
                                }
                                
                                Text(athlete.title)
                                    .foregroundColor(.black)
                                    .font(Font.custom(
                                        "Avenir-Medium",
                                        size: layoutProperties.customFontSize.medium))
                            }
                        }
                        .sheet(item: $selectedAthlete) { athlete in
                            AthletePopUp(layoutProperties: layoutProperties, selectedAthlete: athlete)
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

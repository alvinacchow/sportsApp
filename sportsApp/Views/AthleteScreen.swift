//
//  MainScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.

import SwiftUI



struct AthleteScreen: View {
    
    @State private var isNextScreenActive = false
    @State private var selectedAthlete: Athlete?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
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
                .toolbarBackground(Color(hex: "#FFC4A3"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                

        }
            
        NavigationView {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: adaptiveColumns, spacing: 30) {
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
                                        .frame(width: 300, height: 300)
                                        .cornerRadius(30)
                                }
                                
                                Text(athlete.title)
                                    .foregroundColor(.black)
                                    .font(Font.custom("Nexa-Trial-Book", size: 20))
                            }
                        }
                        .sheet(item: $selectedAthlete) { athlete in
                            AthletePopUp(selectedAthlete: athlete)
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
    AthleteScreen()
}

//
//  GearScreen.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/26/24.
//

import Foundation
import SwiftUI



struct GearScreen: View {
    
    @State private var isNextScreenActive = false
    @State private var selectedGear: Gear?
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    private var gears: [Gear] = [
        one_sportsBra,
        two_tampon,
        three_shorts,
        four_headbands
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
                .toolbarBackground(Color(hex: "#F96D80"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                

        }
            
        NavigationView {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: adaptiveColumns, spacing: 30) {
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
                                        .frame(width: 300, height: 300)
                                        .cornerRadius(30)
                                }
                                
                                Text(gear.title)
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .medium, design: .rounded))
                            }
                        }
                        .sheet(item: $selectedGear) { gear in
                            GearPopUp(selectedGear: gear)
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
    GearScreen()
}

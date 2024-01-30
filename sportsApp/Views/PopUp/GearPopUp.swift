//
//  GearPopUp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/26/24.
//

import Foundation
import SwiftUI
import SwiftUITrackableScrollView


struct GearPopUp: View {
    let layoutProperties: LayoutProperties
    var selectedGear: Gear?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    init(layoutProperties: LayoutProperties, selectedGear: Gear) {
        self.layoutProperties = layoutProperties
        self.selectedGear = selectedGear
    }
    
    var body: some View {
        if let gear = selectedGear {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(gear.title)
                                .bold()
                                .font(.custom(
                                    "Avenir-Black",
                                    size: layoutProperties.customFontSize.extraLarge))
                                .foregroundColor(.black)
                            
                            gear.image
                                .resizable()
                                .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text(gear.desc)
                                .font(.custom(
                                "Avenir-Book",
                                size: layoutProperties.customFontSize.large))
                                .multilineTextAlignment(.center)
                                .padding()
                                .foregroundColor(.black)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .cornerRadius(30)
                    }
                }
               
                .onChange(of: scrollViewContentOffset) {
                    
                    if scrollViewContentOffset < -50 {
                        mode.wrappedValue.dismiss()
                    }
                }
                
            }
            
        }
    
    }
}

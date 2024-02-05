//
//  CardPopUp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

import SwiftUI
import SwiftUITrackableScrollView


struct AthletePopUp: View {
    
    let layoutProperties: LayoutProperties
    var selectedAthlete: Athlete?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    init(layoutProperties: LayoutProperties, selectedAthlete: Athlete) {
            self.layoutProperties = layoutProperties
            self.selectedAthlete = selectedAthlete
        }
    
    var body: some View {
        if let athlete = selectedAthlete {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(athlete.title)
                                .bold()
                                .font(.custom(
                                    "Avenir-Black",
                                    size: layoutProperties.customFontSize.extraLarge))
                            
                            athlete.image
                                .resizable()
                                .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text("Sport: " + athlete.sport)
                                .font(.custom(
                                    "Avenir-Roman",
                                    size: layoutProperties.customFontSize.large))
                                .multilineTextAlignment(.center)
                            
                            Text("Date of Birth: " + athlete.bday)
                                .font(.custom(
                                    "Avenir-Roman",
                                    size: layoutProperties.customFontSize.large))
                                .multilineTextAlignment(.center)
                            
                            Text(athlete.desc)
                                .font(.custom(
                                "Avenir-Book",
                                size: layoutProperties.customFontSize.medium))
                                .multilineTextAlignment(.center)
                                .padding()
                        }
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



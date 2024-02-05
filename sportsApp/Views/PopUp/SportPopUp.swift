//
//  SportPopUp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/22/24.
//

import Foundation
import SwiftUI
import SwiftUITrackableScrollView


struct SportPopUp: View {
    
    let layoutProperties: LayoutProperties
    var selectedSport: Sport?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    init(layoutProperties: LayoutProperties, selectedSport: Sport) {
            self.layoutProperties = layoutProperties
            self.selectedSport = selectedSport
        }
    
    
    var body: some View {
        if let sport = selectedSport {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(sport.title)
                                .bold()
                                .font(.custom(
                                    "Avenir-Black",
                                    size: layoutProperties.customFontSize.extraLarge))
                            
                            sport.image
                                .resizable()
                                .frame(width: layoutProperties.customSquareSize.medium, height: layoutProperties.customSquareSize.medium, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text("Location of Origin: " + sport.loc)
                                .font(.custom(
                                    "Avenir-Roman",
                                    size: layoutProperties.customFontSize.large))
                                .multilineTextAlignment(.center)
                            
                            Text("Year: " + sport.year)
                                .font(.custom(
                                    "Avenir-Roman",
                                    size: layoutProperties.customFontSize.large))
                                .multilineTextAlignment(.center)
                            
                            Text(sport.desc)
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

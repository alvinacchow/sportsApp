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
    var selectedGear: Gear?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
    
        if let gear = selectedGear {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(gear.title)
                                .bold()
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                            
                            gear.image
                                .resizable()
                                .frame(width: 300, height: 300, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text(gear.desc)
                                .font(.system(size:20))
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



//#Preview {
//    CardPopUp()
//}



struct GearCardPopUp_Previews: PreviewProvider {
    static var previews: some View {
        GearPopUp(selectedGear: Gear(title: "Compression Shorts", image: Image("Shorts"),
             desc: "Compression shorts are a vital piece of sports gear specifically designed to optimize performance and provide essential support for girls engaged in various physical activities. Crafted from elastic materials, these shorts snugly wrap around the thighs and buttocks, offering compression to the muscles. The primary purpose of compression shorts is to enhance blood circulation and reduce muscle vibration during movement, ultimately minimizing fatigue and promoting quicker recovery.\n\nIn the context of sports, compression shorts prove invaluable for their ability to provide targeted support to the major muscle groups involved in activities such as running, cycling, or weightlifting. The snug fit also helps prevent chafing and irritation, ensuring a comfortable experience throughout intense workouts.\n\nThe moisture-wicking properties of compression shorts contribute to effective sweat management, keeping the body cool and dry. This feature is particularly advantageous during high-intensity exercises, allowing girls to maintain focus on their performance without the distraction of discomfort."))
    }
}

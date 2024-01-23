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
    var selectedSport: Sport?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
    
        if let sport = selectedSport {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(sport.title)
                                .bold()
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                            
                            sport.image
                                .resizable()
                                .frame(width: 300, height: 300, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text("Location of Origin: " + sport.loc)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                            Text("Year: " + sport.year)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                            Text(sport.desc)
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


struct SportCardPopUp_Previews: PreviewProvider {
    static var previews: some View {
       SportPopUp(selectedSport:Sport(title: "Rugby", image: Image("Rugby"), year: "1800s", loc: "England", desc: "abcdefg")
       )

    }
}

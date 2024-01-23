//
//  CardPopUp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

import SwiftUI
import SwiftUITrackableScrollView


struct AthletePopUp: View {
    var selectedAthlete: Athlete?
    @State private var scrollViewContentOffset = CGFloat(0)
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
    
        if let athlete = selectedAthlete {
            ZStack {
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                    ScrollView (showsIndicators: false) {
                        VStack {
                            Text(athlete.title)
                                .bold()
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                            
                            athlete.image
                                .resizable()
                                .frame(width: 300, height: 300, alignment: .bottom)
                                .cornerRadius(30)
                            
                            Text("Sport: " + athlete.sport)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                            Text("Date of Birth: " + athlete.bday)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                            Text(athlete.desc)
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



struct AthleteCardPopUp_Previews: PreviewProvider {
    static var previews: some View {
        AthletePopUp(selectedAthlete: Athlete(title: "Serena Williams", image: Image("Williams"), bday: "September 26, 1981", sport: "Tennis",
           desc: "Serena Williams is an iconic American tennis player whose impact on the sport extends far beyond the tennis court. Hailing from Saginaw, Michigan, Serena, alongside her sister Venus, transformed the landscape of women's tennis with her unparalleled athleticism and fierce determination.\n\nWith an astonishing 23 Grand Slam singles titles, Serena Williams is considered one of the greatest tennis players in history. Her powerful serve, aggressive playing style, and mental resilience have been key factors in her success. Williams achieved the prestigious Grand Slam in 2002-2003, winning all four major tournaments consecutively—a feat that showcased her dominance.\n\nBeyond her sporting achievements, Serena has been a trailblazer for gender equality in tennis, advocating for equal prize money and opportunities for female athletes. Her impact on and off the court has earned her respect and admiration globally. Despite facing adversity, injuries, and personal challenges, Serena's commitment to the game and her resilience have solidified her as an inspirational figure.\n\nOff the court, Serena Williams is a successful entrepreneur, fashion icon, and philanthropist. Her influence transcends sports, making her a symbol of empowerment and excellence for generations to come."))
    }
}

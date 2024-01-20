//
//  CardPopUp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/19/24.
//

import SwiftUI

struct CardPopUp: View {
    var selectedAthlete: Athlete?
    
    var body: some View {
        VStack {
            if let athlete = selectedAthlete {
                Text(athlete.title)
            }
        }
    }
}

#Preview {
    CardPopUp()
}

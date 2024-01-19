//
//  WelcomeView.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/18/24.
//

import SwiftUI


struct WelcomeView: View {
    
    func setGradientBackground() -> some View {
        let colorTop = Color(
            red: Double(0xfe) / 255.0,
            green: Double(0xd9) / 255.0,
            blue: Double(0xa1) / 255.0
        )
        
        let colorBottom = Color(
            red: Double(0xf7) / 255.0,
            green: Double(0xa1) / 255.0,
            blue: Double(0x5e) / 255.0
        )
        
        return LinearGradient(gradient: Gradient(colors: [colorTop, colorBottom]), startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        ZStack {
            setGradientBackground()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(spacing: 20) {
                    Image("Background")
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .bottom)
                    
                    Text("trailblazHER")
                        .bold().font(.system(size: 40))
                        .padding()
                    
                    Button("Continue") {}
                        .buttonStyle(.bordered)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .multilineTextAlignment(.center)
                .padding()
                .cornerRadius(30)
                .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


#Preview {
    WelcomeView()
}

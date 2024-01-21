//
//  WelcomeView.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/18/24.
//

import SwiftUI


struct WelcomeView: View {
    @State var showMain = false
    @State private var isLoginSuccessful = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>


    
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
                    
                    Button(action: {
                        // Perform login logic here
                        // For demonstration, assume login is successful
                        self.isLoginSuccessful = true
                    }) {
                        Text("Continue")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(30)
                    }
                    .padding()
                }
                .padding()
                .navigationBarHidden(true)
                .fullScreenCover(isPresented: $isLoginSuccessful) {
                    MainScreen()
                }
                .multilineTextAlignment(.center)
                .padding()
                .cornerRadius(30)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}


#Preview {
    WelcomeView()
}

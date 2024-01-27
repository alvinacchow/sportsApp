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
        let colorTop = Color(hex: "#FFC4A3")
        let colorMiddle = Color(hex:"#FF9E7C")
        let colorBottom = Color(hex: "#FF7855")
        
        return LinearGradient(gradient: Gradient(colors: [colorTop, colorMiddle, colorBottom]), startPoint: .top, endPoint: .bottom)
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
                    
                    Text("TrailblazHER")
                        .font(Font.custom("Nexa-Trial-BoldItalic", size: 70))
                        .padding()
                }
                .padding()
                .navigationBarHidden(true)
                .onAppear {
                    // Delay navigation by 3 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.isLoginSuccessful = true
                    }
                }
                .fullScreenCover(isPresented: $isLoginSuccessful) {
                    HomePage()
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

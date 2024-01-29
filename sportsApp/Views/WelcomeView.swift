//
//  WelcomeView.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/18/24.
//

import SwiftUI

struct WelcomeView: View {
    let layoutProperties: LayoutProperties
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
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(layoutProperties.dimensValues.medium)
                        .shadow(radius: layoutProperties.dimensValues.medium)
                        .frame(width: 200, height: 200)
                    
                    Text("TrailblazHER")
                        .font(Font.custom("Nexa-Trial-BoldItalic", size: layoutProperties.customFontSize.extraLarge))
                        
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


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            WelcomeView(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
            WelcomeView(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
            WelcomeView(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
            WelcomeView(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
    }
}

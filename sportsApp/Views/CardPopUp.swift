////
////  CardPopUp.swift
////  sportsApp
////
////  Created by Alvina Chow on 1/19/24.
////
//
//import SwiftUI
//
//struct CardPopUp: View {
//// 
////    @State private var isNextScreenActive = false
////
////    var body: some View {
////        NavigationView {
////            ZStack {
////                setGradientBackground()
////                    .edgesIgnoringSafeArea(.all)
////                
////                VStack {
////                    VStack(spacing: 20) {
////                        Image("Background")
////                            .resizable()
////                            .frame(width: 300, height: 300, alignment: .bottom)
////                        
////                        Text("trailblazHER")
////                            .bold().font(.system(size: 40))
////                            .padding()
////                    }
////                    .multilineTextAlignment(.center)
////                    .padding()
////                    .cornerRadius(30)
////                    .symbolVariant(.fill)
////                    .frame(maxWidth: .infinity, maxHeight: .infinity)
////                    
////                    Button(action: {
////                        // Update the state to trigger navigation
////                        isNextScreenActive = true
////                    }) {
////                        Text("Continue")
////                            .foregroundColor(.black)
////                            .padding()
////                            .background(Color.white)
////                            .cornerRadius(20)
////                    }
////                    .sheet(isPresented: $isNextScreenActive) {
////                        // This is where you navigate to the next screen
////                        MainScreen()
////                    }
////                }
////            }
////        }
////    }
//}
//
//#Preview {
//    CardPopUp()
//}

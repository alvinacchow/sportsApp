//
//  ContentView.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    let layoutProperties:LayoutProperties
    
    var body: some View {
        ContentRootView(isLandscape: layoutProperties.landscape) {
            WelcomeView(layoutProperties: layoutProperties)
        }
    }
}

struct ContentRootView<Content:View>:View{
    let isLandscape:Bool
    @ViewBuilder var content:() -> Content
    var body: some View{
        if(isLandscape){
            HStack{
                content()
            }
        }
        else{
            VStack{
                content()
            }
        }
        
    }
}
#Preview {
    ContentView(
        layoutProperties: getPreviewLayoutProperties(landscape: false, height: 844, width: 390)
    )
    .previewDevice("iPhone")
}

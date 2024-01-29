//
//  sportsAppApp.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/18/24.
//

import SwiftUI

@main
struct sportsApp: App {
    var body: some Scene {
        WindowGroup {
            ResponsiveView {properties in
                ContentView(layoutProperties: properties)
            }
            .navigationViewStyle(.stack)
        }
    }
}

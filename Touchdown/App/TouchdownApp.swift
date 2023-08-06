//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Martin on 30.07.23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

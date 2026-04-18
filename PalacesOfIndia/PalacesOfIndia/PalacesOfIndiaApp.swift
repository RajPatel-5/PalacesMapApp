//
//  PalacesOfIndiaApp.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 17/04/26.
//

import SwiftUI

@main
struct PalacesOfIndiaApp: App {
    
    @StateObject private var vm = PalacesViewModel()
    
    var body: some Scene {
        WindowGroup {
            PalacesView()
                .environmentObject(vm)
        }
    }
}

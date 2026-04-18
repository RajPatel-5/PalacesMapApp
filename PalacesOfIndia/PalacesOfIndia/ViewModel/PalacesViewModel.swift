//
//  PalacesViewModel.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 17/04/26.
//

import SwiftUI
internal import Combine
import MapKit

class PalacesViewModel: ObservableObject {
    
//    All Loaded Location
    @Published var palaces: [Location]
    
//    current location on map
    @Published var mapPalace : Location {
        didSet {
            updateMapRegion(palace: mapPalace)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    var mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
//    Show list of Palaces
    @Published var showPalacesList: Bool = false
    
//    Show Palace via sheet
    @Published var sheetPalace : Location? = nil
    
    init() {
        let palaces = PalacesDataService.locations
        self.palaces = palaces
        self.mapPalace = palaces.first!
        
        self.updateMapRegion(palace: palaces.first!)
    }
    
    
    private func updateMapRegion(palace: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: palace.coordinates,
                span: mapSpan)
        }
    }
    
    func toggleLocationList(){
        withAnimation(.easeInOut) {
            showPalacesList.toggle()
        }
    }
    
    func showNextLocation(palace: Location) {
        withAnimation(.easeInOut) {
            mapPalace = palace
            showPalacesList = false
        }
    }
    
    func nextButtonPressed(){
//        get current index
//        let currentIndex = palaces.firstIndex { palace in
//            return palace == mapPalace
//        }
        
        
        guard let currentIndex = palaces.firstIndex(where: {$0 == mapPalace}) else { return }
        
        let nextIndex = currentIndex + 1
        guard palaces.indices.contains(nextIndex) else {
                // Next index is Not Valid
                // start from index 0
            guard let firstPalace = palaces.first else { return }
            showNextLocation(palace: firstPalace)
            return
        }
        
        let nextPalace = palaces[nextIndex]
        showNextLocation(palace: nextPalace)
        
    }
}


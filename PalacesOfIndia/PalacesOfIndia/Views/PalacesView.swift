//
//  PalacesView.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 17/04/26.
//

import SwiftUI
import MapKit

struct PalacesView: View {
    
    @EnvironmentObject private var vm: PalacesViewModel
    
    
    var body: some View {
        ZStack{
            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding()

                Spacer()
                
                palacesPreviewStack
            }
        }
        .sheet(item: $vm.sheetPalace, onDismiss: nil) { palace in
            PalaceDetailView(palace: palace)
        }
    }
}

#Preview {
    PalacesView()
        .environmentObject(PalacesViewModel())
}



extension PalacesView {
    
    private var header: some View {
        VStack{
            Button(action: vm.toggleLocationList) {
                Text(vm.mapPalace.name + ", " + vm.mapPalace.cityName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapPalace)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showPalacesList ? 180 : 0 ))
                    }
            }
            
            if vm.showPalacesList {
                PalacesListView()
            }
            
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x:0, y: 14)
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.palaces,
            annotationContent: { palace in
            MapAnnotation(coordinate: palace.coordinates) {
                PalaceMapAnnotationView()
                    .scaleEffect(vm.mapPalace == palace ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(palace: palace)
                    }
            }
        })
    }
    
    private var palacesPreviewStack : some View {
        ZStack{
            ForEach(vm.palaces) { palace in
                if vm.mapPalace == palace {
                    PalacePreviewView(palace: palace)
                        .padding()
                        .shadow(color: Color.black.opacity(0.4), radius: 20)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
                
            }
        }
    }
    
}

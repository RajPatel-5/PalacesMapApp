//
//  PalaceDetailView.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 18/04/26.
//

import SwiftUI
import MapKit

struct PalaceDetailView: View {
    
    @EnvironmentObject private var vm : PalacesViewModel
    
    let palace : Location
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 16)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            backButton
        }
    }
}

#Preview {
    PalaceDetailView(palace:
                        PalacesDataService.locations.first!)
    .environmentObject(PalacesViewModel())
}


extension PalaceDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(palace.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(palace.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(palace.cityName)
                .font(.subheadline)
                .foregroundStyle(Color.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16 ) {
            Text(palace.description)
                .font(.subheadline)
                .foregroundStyle(Color.secondary)
            
            if let url = URL(string: palace.link) {
                Link("Read more on Wikipedia", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
            
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: palace.coordinates,
            span: vm.mapSpan)),
            annotationItems: [palace]) { palace in
            MapAnnotation(coordinate: palace.coordinates) {
                PalaceMapAnnotationView()
                    .shadow(radius: 20)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
        
        
    }
    
    private var backButton: some View {
        Button {
            vm.sheetPalace = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundStyle(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

        
    }
    
}

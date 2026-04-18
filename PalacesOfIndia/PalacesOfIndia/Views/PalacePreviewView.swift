//
//  PalacePreviewView.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 18/04/26.
//

import SwiftUI

struct PalacePreviewView: View {
    
    @EnvironmentObject private var vm : PalacesViewModel
    
    let palace : Location
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 0){
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8) {
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65 )
                
        )
        .cornerRadius(20)
    }
}

#Preview {
    
    ZStack{
        Color.blue.ignoresSafeArea()
        
        PalacePreviewView(palace: PalacesDataService.locations.first!)
            .padding()
            
    }
    .environmentObject(PalacesViewModel())
    
}


extension PalacePreviewView {
    private var imageSection : some View {
        ZStack {
            if let imageNames = palace.imageNames.first {
                Image(imageNames)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    
                
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection : some View {
        VStack(alignment: .leading, spacing: 4){
            Text(palace.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(palace.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetPalace = palace
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 125, height: 36)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton : some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 36)
        }
        .buttonStyle(.bordered)
        
    }
}

//
//  PalaceMapAnnotationView.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 18/04/26.
//

import SwiftUI

struct PalaceMapAnnotationView: View {
    
    let accentColor = Color.cyan
    
    var body: some View {
        VStack(spacing:0){
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .font(.headline)
                .foregroundStyle(Color.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle.degrees(180))
                .offset(y: -3)
                .padding(.bottom, 35)
        }
    }
}

#Preview {
    PalaceMapAnnotationView()
}
